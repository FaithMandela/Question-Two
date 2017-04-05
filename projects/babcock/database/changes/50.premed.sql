
SELECT qstudentid, studentdegreeid, studentid, org_id FROM qstudentview WHERE sublevelid = 'UGPM' AND quarterid = '2016/2017.2'
ORDER BY studentdegreeid;

SELECT qstudentid, studentdegreeid, studentid, org_id FROM qstudentview WHERE quarterid = '2016/2017.2M' AND studentdegreeid IN
(SELECT studentdegreeid FROM qstudentview WHERE sublevelid = 'UGPM' AND quarterid = '2016/2017.2')
ORDER BY studentdegreeid;

SELECT studentpayments.studentpaymentid, studentpayments.qstudentid, qstudents.studentdegreeid
FROM studentpayments INNER JOIN qstudents ON studentpayments.qstudentid = qstudents.qstudentid
WHERE qstudents.sublevelid = 'UGPM' AND qstudents.quarterid = '2016/2017.2';

SELECT studentpayments.studentpaymentid, qstudents.qstudentid, qstudents.studentdegreeid
FROM qstudents LEFT JOIN studentpayments ON qstudents.qstudentid = studentpayments.qstudentid
WHERE qstudents.quarterid = '2016/2017.2M' AND qstudents.studentdegreeid IN
(SELECT qstudents.studentdegreeid
FROM studentpayments INNER JOIN qstudents ON studentpayments.qstudentid = qstudents.qstudentid
WHERE qstudents.sublevelid = 'UGPM' AND qstudents.quarterid = '2016/2017.2');


UPDATE qstudents SET quarterid = '2016/2017.2M', org_id = 1 WHERE qstudentid = 275170;
UPDATE qstudents SET quarterid = '2016/2017.2M', org_id = 1 WHERE qstudentid = 274944;


SELECT qgradeid, gradeid FROM qgrades WHERE qstudentid IN
(SELECT qstudentid FROM qstudents WHERE sublevelid = 'UGPM' AND quarterid = '2016/2017.2');

ALTER TABLE qgrades DISABLE TRIGGER del_qgrades;
DELETE FROM qgrades WHERE qstudentid IN
(SELECT qstudentid FROM qstudents WHERE sublevelid = 'UGPM' AND quarterid = '2016/2017.2');
ALTER TABLE qgrades ENABLE TRIGGER del_qgrades;

DELETE FROM qstudents WHERE sublevelid = 'UGPM' AND quarterid = '2016/2017.2';

SELECT quarterid, qstudentid, studentid, studentdegreeid, sublevelid, studylevel
FROM qstudentview WHERE studentid IN ('70595', '73145');

SELECT studentid, studentdegreeid FROM studentdegrees WHERE studentid IN ('70595', '73145');

SELECT qstudentid
FROM qstudents
WHERE ((financeclosed = true) OR (finaceapproval = true)) AND quarterid = '2016/2017.2M' AND qresidenceid is null;

SELECT quarterid, qstudentid, active, studentname, studentid, org_id FROM vwqstudentbalances WHERE qstudentid