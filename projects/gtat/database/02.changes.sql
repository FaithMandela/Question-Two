

DROP VIEW vwcrnotesummary;
DROP VIEW vwinvoicesummary;
DROP VIEW vwcrnotelist;
DROP VIEW vwinvoicelist;
DROP VIEW clientstatement;
DROP VIEW vwinvoice;
DROP VIEW vwsales;


CREATE VIEW vwsales AS
	SELECT vwmanagement.clientid, vwmanagement.clientname, vwmanagement.clientbranchid, vwmanagement.branchname, vwmanagement.address, vwmanagement.postalcode,
		vwmanagement.managementid, vwmanagement.town, vwmanagement.countryid, vwmanagement.countryname, vwmanagement.telno, vwmanagement.email,  
		vwmanagement.creationdate, vwmanagement.departuredate, vwmanagement.leadname, vwmanagement.wholesalevalue, vwmanagement.grossvalue, 
		vwmanagement.currency, vwmanagement.subagent,
		sales.saleid, sales.bookingID, sales.agentReference, sales.item,sales.city,sales.name,sales.serviceDate,sales.nights, sales.totalPrice, sales.commission, 
		sales.netremits, sales.creditnote, sales.status, sales.alternate, sales.completed, sales.requestedDate,sales.requestedTime,sales.nationality,sales.rmks, sales.periodid,
		sales.gkref, (sales.totalprice - sales.commission) as amount, 
		(sales.totalprice - sales.netremits - sales.commission) as grossearning,
		gtarevenue.serviceid, gtarevenue.servicename, gtarevenue.basis, gtarevenue.gkpercentage, 
		gtarevenue.tacommissionout, gtarevenue.sharedndccommission, gtarevenue.otherndccommission, gtarevenue.gk,
		
		(CASE WHEN gtarevenue.commisionable = false THEN (sales.netremits * gtarevenue.gkpercentage / 100)
		ELSE (sales.totalprice * gtarevenue.gkpercentage / 100) END) as gkpercent, 
		
		(CASE WHEN gtarevenue.commisionable = false THEN (sales.netremits * gtarevenue.tacommissionout / 100) 
		ELSE (sales.totalprice * gtarevenue.tacommissionout / 100) END) as tacommission, 
		
		(CASE WHEN gtarevenue.commisionable = false THEN (sales.netremits * gtarevenue.sharedndccommission / 100) 
		ELSE (sales.totalprice * gtarevenue.sharedndccommission / 100) END) as sharedcommission, 
		
		(CASE WHEN gtarevenue.commisionable = false THEN (sales.netremits * gtarevenue.otherndccommission / 100) 
		ELSE (sales.totalprice * gtarevenue.otherndccommission / 100) END) as otherndc, 
		
		(CASE WHEN gtarevenue.commisionable = false THEN (sales.netremits * gtarevenue.gk / 100)
		ELSE (sales.totalprice * gtarevenue.gk / 100) END) as galileoearning,
		
		sales.vat_rate, 	
		((CASE WHEN gtarevenue.commisionable = false THEN (sales.netremits * (gtarevenue.sharedndccommission + gtarevenue.tacommissionout) / 100) 
		ELSE (sales.totalprice * (gtarevenue.sharedndccommission + gtarevenue.tacommissionout) / 100) END) * sales.vat_rate / 100) as galileo_vat,

		
		('GT/INVC' || CAST(vwmanagement.clientid as varchar) || Period.AccountPeriod ) as clinvnumber,
		Period.Startdate, Period.enddate, Period.AccountPeriod, Period.InvoiceDate, (Period.InvoiceDate + 30) as duedate,
		invoicelist.invoiceid, invoicelist.issued, ('TP/GTA/INV/' || invoicelist.invoiceid) as invoicenumber,
		invoicelist.ispicked
	FROM (((sales INNER JOIN gtarevenue ON sales.item = gtarevenue.serviceid)
		INNER JOIN Period ON sales.periodid = Period.PeriodID)
		LEFT JOIN vwmanagement ON sales.bookingID = vwmanagement.bookingID)
		LEFT JOIN invoicelist ON (vwmanagement.clientid = invoicelist.clientid) AND (sales.periodid = invoicelist.periodid);
		
CREATE VIEW vwinvoice AS
	SELECT 	vwsales.clientid, vwsales.clientname,  vwsales.clientbranchid, vwsales.branchname, vwsales.address,
		vwsales.periodid, vwsales.Startdate, vwsales.postalcode, vwsales.town, vwsales.countryid, vwsales.countryname,
		vwsales.bookingid, vwsales.agentreference, vwsales.item, vwsales.servicedate, vwsales.city, vwsales.name, 
		vwsales.nights, vwsales.commission, vwsales.netremits, vwsales.totalprice, vwsales.amount, vwsales.creditnote, 
		vwsales.grossearning, vwsales.InvoiceDate, vwsales.duedate, vwsales.invoicenumber, vwsales.invoiceid, vwsales.issued,
		vwsales.gkref, vwsales.ispicked, vwsales.vat_rate, vwsales.galileo_vat
	FROM vwsales
	WHERE (lower(trim(vwsales.status)) = 'confirmed');
		
CREATE VIEW clientstatement AS
	SELECT vwinvoice.clientid, vwinvoice.clientname, vwinvoice.periodid, vwinvoice.invoicenumber, vwinvoice.invoicedate, 
		vwinvoice.netremits, vwinvoice.grossearning, vwinvoice.vat_rate, vwinvoice.galileo_vat
	FROM vwinvoice;

CREATE VIEW vwinvoicelist AS
	SELECT clientid, clientname, town, countryid, countryname, 
		periodid, invoiceid, issued
	FROM vwsales
	WHERE (clientid is not null) AND (totalprice > 0)
	GROUP BY clientid, clientname, town, countryid, countryname, 
		periodid, invoiceid, issued
	ORDER BY clientid;

CREATE VIEW vwcrnotelist AS
	SELECT vwsales.clientid, vwsales.periodid,crnotelist.crnoteid
	FROM vwsales LEFT JOIN crnotelist ON
		(vwsales.PeriodID = crnotelist.PeriodID) AND (vwsales.clientid = crnotelist.clientid)
	WHERE (vwsales.clientid is not null) AND (vwsales.totalprice < 0) AND (to_char(StartDate, 'MMYYYY') <> to_char(servicedate, 'MMYYYY'))
	GROUP BY vwsales.clientid, vwsales.periodid, crnotelist.crnoteid
	ORDER BY vwsales.clientid;

CREATE VIEW vwinvoicesummary AS 
	SELECT 	vwsales.clientid, vwsales.clientname, vwsales.InvoiceDate, vwsales.invoiceid, vwsales.invoicenumber,
		vwsales.Startdate, vwsales.periodid, vwsales.ispicked, sum(vwsales.amount) as invoiceamount,
		sum(vwsales.netremits) as gtatotals
	FROM vwsales
	WHERE ((lower(trim(vwsales.status)) = 'confirmed') AND ((totalprice > 0) OR (to_char(StartDate, 'MMYYYY') = to_char(servicedate, 'MMYYYY'))))
	GROUP BY vwsales.clientid, vwsales.clientname, vwsales.InvoiceDate, vwsales.invoiceid, vwsales.invoicenumber, 
		vwsales.Startdate, vwsales.periodid, vwsales.ispicked;

CREATE VIEW vwcrnotesummary AS 
	SELECT 	vwsales.clientid, vwsales.clientname, vwsales.InvoiceDate, vwsales.periodid,
		crnotelist.crnoteid, ('TP/GTA/CR/' || crnotelist.crnoteid) as creditnotenumber, crnotelist.ispicked, 
		vwsales.Startdate, sum(vwsales.amount) as invoiceamount,
		sum(vwsales.netremits) as gtatotals
	FROM vwsales LEFT JOIN crnotelist ON
		(vwsales.PeriodID = crnotelist.PeriodID) AND (vwsales.clientid = crnotelist.clientid)
	WHERE (lower(trim(vwsales.status)) = 'confirmed') 
		AND (vwsales.totalprice < 0) AND (to_char(vwsales.StartDate, 'MMYYYY') <> to_char(vwsales.servicedate, 'MMYYYY'))
	GROUP BY vwsales.clientid, vwsales.clientname, vwsales.InvoiceDate, vwsales.periodid,
		crnotelist.crnoteid, ('TP/GTA/CR/' || crnotelist.crnoteid), crnotelist.ispicked, vwsales.Startdate;


CREATE OR REPLACE FUNCTION insSales(varchar(50), varchar(50)) RETURNS varchar(50) AS $$
DECLARE
	myrec RECORD;
BEGIN

	DELETE FROM tmpsales WHERE bookingid = 'Booking ID';

	SELECT INTO myrec max(PeriodID) as defperiodid 
	FROM Period WHERE (IsActive = true) AND (Approved = false);

	INSERT INTO sales (bookingid, AgentReference, item, city, name, ServiceDate, nights, status, alternate, rmks,
			completed, RequestedDate, RequestedTime, nationality, totalprice, netremits, gkref, periodid, commission, vat_rate) 
	SELECT cast(cast(bookingid as real) as int), AgentReference, trim(upper(replace(tmpsales.item, ' ', ''))), city, name, 
			CAST('1899-12-30' as date) + cast(CAST(ServiceDate as real) as int),
			cast(Cast(nights as real) as int), status, alternate, rmks, completed, 
			CAST('1899-12-30' as date) + cast(CAST(RequestedDate as real) as int),
			Cast(RequestedTime as real) * interval '1 day', nationality, 
			to_number(replace(TotalPrice, ' USD', ''), 'FM999G999G999.99'), 
			(CASE WHEN gtarevenue.commisionable = false THEN
				to_number(replace(TotalPrice, ' USD', ''), 'FM999G999G999.99') / (1 + gtarevenue.gkpercentage/100)
				ELSE to_number(replace(TotalPrice, ' USD', ''), 'FM999G999G999.99') * (1 - gtarevenue.gkpercentage/100) END),
			gkref, myrec.defperiodid,
			(CASE WHEN gtarevenue.commisionable = false THEN 
				(TAcommissionout /100) * to_number(replace(TotalPrice, ' USD', ''), 'FM999G999G999.99') / (1 + gkpercentage/100)
				ELSE (TAcommissionout /100) * to_number(replace(TotalPrice, ' USD', ''), 'FM999G999G999.99') END), 16
	FROM tmpsales INNER JOIN gtarevenue ON trim(upper(replace(tmpsales.item, ' ', ''))) = trim(upper(gtarevenue.serviceid));
	
	DELETE FROM tmpsales;

	RETURN 'Done';
END
$$ LANGUAGE plpgsql;


