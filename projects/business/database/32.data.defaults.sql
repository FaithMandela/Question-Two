

--- Data
INSERT INTO currency (currency_id, currency_name, currency_symbol) VALUES (5, 'US Dollar', 'USD');
INSERT INTO orgs (org_id, org_name, org_sufix, currency_id, logo) VALUES (1, 'Default', 'df', 5, 'logo.png');
UPDATE currency SET org_id = 1 WHERE currency_id = 5;
SELECT pg_catalog.setval('orgs_org_id_seq', 1, true);
SELECT pg_catalog.setval('currency_currency_id_seq', 5, true);

INSERT INTO currency_rates (org_id, currency_id, exchange_rate) VALUES (1, 5, 1);

INSERT INTO entity_types (org_id, entity_type_name, entity_role, use_key) VALUES (1, 'Users', 'user', 0);
INSERT INTO entity_types (org_id, entity_type_name, entity_role, use_key) VALUES (1, 'Staff', 'staff', 1);
INSERT INTO entity_types (org_id, entity_type_name, entity_role, use_key) VALUES (1, 'Client', 'client', 2);
INSERT INTO entity_types (org_id, entity_type_name, entity_role, use_key) VALUES (1, 'Supplier', 'supplier', 3);

INSERT INTO subscription_levels (org_id, subscription_level_name) VALUES (1, 'Basic');
INSERT INTO subscription_levels (org_id, subscription_level_name) VALUES (1, 'Manager');
INSERT INTO subscription_levels (org_id, subscription_level_name) VALUES (1, 'Consumer');

INSERT INTO tax_types (use_key, org_id, tax_type_name, tax_rate) VALUES (0, 1, 'Exempt', 0);
INSERT INTO tax_types (use_key, org_id, tax_type_name, tax_rate) VALUES (0, 1, 'VAT', 16);
UPDATE tax_types SET org_id = 1, currency_id = 5 WHERE org_id is null;
SELECT pg_catalog.setval('tax_types_tax_type_id_seq', 12, true);


INSERT INTO sys_emails (org_id, use_type,  sys_email_name, title, details) 
SELECT 1, use_type, sys_email_name, title, details
FROM sys_emails
WHERE org_id = 0;

INSERT INTO accounts_class (org_id, accounts_class_no, chat_type_id, chat_type_name, accounts_class_name)
SELECT 1, accounts_class_no, chat_type_id, chat_type_name, accounts_class_name
FROM accounts_class
WHERE org_id = 0;


INSERT INTO account_types (org_id, accounts_class_id, account_type_no, account_type_name)
SELECT a.org_id, a.accounts_class_id, b.account_type_no, b.account_type_name
FROM accounts_class a INNER JOIN account_types b ON a.accounts_class_no = b.accounts_class_id
WHERE (a.org_id = 1) AND (b.org_id = 0);


INSERT INTO accounts (org_id, account_type_id, account_no, account_name)
SELECT a.org_id, a.account_type_id, b.account_no, b.account_name
FROM account_types a INNER JOIN accounts b ON a.account_type_no = b.account_type_id
WHERE (a.org_id = 1) AND (b.org_id = 0);

