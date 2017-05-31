
--- Create use key types
INSERT INTO use_keys (use_key_id, use_key_name, use_function) VALUES (100, 'Customers', 0);
INSERT INTO use_keys (use_key_id, use_key_name, use_function) VALUES (101, 'Receipts', 4);
INSERT INTO use_keys (use_key_id, use_key_name, use_function) VALUES (102, 'Payments', 4);
INSERT INTO use_keys (use_key_id, use_key_name, use_function) VALUES (104, 'Transfer', 4);
INSERT INTO use_keys (use_key_id, use_key_name, use_function) VALUES (105, 'Loan Intrests', 4);
INSERT INTO use_keys (use_key_id, use_key_name, use_function) VALUES (106, 'Loan Penalty', 4);
INSERT INTO use_keys (use_key_id, use_key_name, use_function) VALUES (107, 'Loan Payment', 4);
INSERT INTO use_keys (use_key_id, use_key_name, use_function) VALUES (108, 'Loan Disbursement', 4);
INSERT INTO use_keys (use_key_id, use_key_name, use_function) VALUES (201, 'Initial Charges', 4);
INSERT INTO use_keys (use_key_id, use_key_name, use_function) VALUES (202, 'Transaction Charges', 4);

INSERT INTO entity_types (org_id, use_key_id, entity_type_name, entity_role) VALUES (0, 100, 'Bank Customers', 'client');

INSERT INTO activity_frequency (activity_frequency_id, activity_frequency_name) VALUES (1, 'Once');
INSERT INTO activity_frequency (activity_frequency_id, activity_frequency_name) VALUES (2, 'Daily');
INSERT INTO activity_frequency (activity_frequency_id, activity_frequency_name) VALUES (3, 'Weekly');
INSERT INTO activity_frequency (activity_frequency_id, activity_frequency_name) VALUES (4, 'Monthly');
INSERT INTO activity_frequency (activity_frequency_id, activity_frequency_name) VALUES (5, 'Quartely');
INSERT INTO activity_frequency (activity_frequency_id, activity_frequency_name) VALUES (6, 'Half Yearly');
INSERT INTO activity_frequency (activity_frequency_id, activity_frequency_name) VALUES (7, 'Yearly');

INSERT INTO  activity_status (activity_status_id, activity_status_name) VALUES (1, 'Completed');
INSERT INTO  activity_status (activity_status_id, activity_status_name) VALUES (2, 'UnCleared');
INSERT INTO  activity_status (activity_status_id, activity_status_name) VALUES (3, 'Commited');

INSERT INTO activity_types (activity_type_id, account_id, use_key_id, org_id, activity_type_name, is_active, details) VALUES (2, 34005, 101, 0, 'Cash Deposits', true, NULL);
INSERT INTO activity_types (activity_type_id, account_id, use_key_id, org_id, activity_type_name, is_active, details) VALUES (3, 34005, 101, 0, 'Cheque Deposits', true, NULL);
INSERT INTO activity_types (activity_type_id, account_id, use_key_id, org_id, activity_type_name, is_active, details) VALUES (4, 34005, 101, 0, 'MPESA Deposits', true, NULL);
INSERT INTO activity_types (activity_type_id, account_id, use_key_id, org_id, activity_type_name, is_active, details) VALUES (5, 34005, 102, 0, 'Cash Withdrawal', true, NULL);
INSERT INTO activity_types (activity_type_id, account_id, use_key_id, org_id, activity_type_name, is_active, details) VALUES (6, 34005, 102, 0, 'Cheque Withdrawal', true, NULL);
INSERT INTO activity_types (activity_type_id, account_id, use_key_id, org_id, activity_type_name, is_active, details) VALUES (7, 34005, 102, 0, 'MPESA Withdrawal', true, NULL);
INSERT INTO activity_types (activity_type_id, account_id, use_key_id, org_id, activity_type_name, is_active, details) VALUES (8, 34005, 105, 0, 'Loan Intrests', true, NULL);
INSERT INTO activity_types (activity_type_id, account_id, use_key_id, org_id, activity_type_name, is_active, details) VALUES (9, 34005, 106, 0, 'Loan Penalty', true, NULL);
INSERT INTO activity_types (activity_type_id, account_id, use_key_id, org_id, activity_type_name, is_active, details) VALUES (10, 34005, 107, 0, 'Loan Payment', true, NULL);
INSERT INTO activity_types (activity_type_id, account_id, use_key_id, org_id, activity_type_name, is_active, details) VALUES (11, 34005, 108, 0, 'Loan Disbursement', true, NULL);
INSERT INTO activity_types (activity_type_id, account_id, use_key_id, org_id, activity_type_name, is_active, details) VALUES (12, 34005, 104, 0, 'Account Transfer', true, NULL);
INSERT INTO activity_types (activity_type_id, account_id, use_key_id, org_id, activity_type_name, is_active, details) VALUES (20, 34005, 201, 0, 'Account opening charges', true, NULL);
INSERT INTO activity_types (activity_type_id, account_id, use_key_id, org_id, activity_type_name, is_active, details) VALUES (22, 34005, 202, 0, 'Transfer fees', true, NULL);
SELECT pg_catalog.setval('activity_types_activity_type_id_seq', 22, true);

INSERT INTO interest_methods (interest_method_id, org_id, interest_method_name, formural, details) VALUES (1, 0, 'Loan Fixed Intrest', 'get_intrest(1, loan_id)', NULL);
INSERT INTO interest_methods (interest_method_id, org_id, interest_method_name, formural, details) VALUES (2, 0, 'Loan reducing balnace', 'get_intrest(2, loan_id)', NULL);
INSERT INTO interest_methods (interest_method_id, org_id, interest_method_name, formural, details) VALUES (3, 0, 'Savings intrest', 'get_intrest(1, loan_id)', NULL);
INSERT INTO interest_methods (interest_method_id, org_id, interest_method_name, formural, details) VALUES (4, 0, 'No Intrest', 'get_intrest(1, loan_id)', NULL);
SELECT pg_catalog.setval('interest_methods_interest_method_id_seq', 4, true);


INSERT INTO products (product_id, activity_frequency_id, account_id, interest_method_id, currency_id, org_id, product_name, description, loan_account, is_active, interest_rate, min_opening_balance, lockin_period_frequency, minimum_balance, maximum_balance, minimum_day, maximum_day, minimum_trx, maximum_trx, details) VALUES (1, 4, 34005, 4, 1, 0, 'Transaction account', 'Account to handle transactions', false, true, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO products (product_id, activity_frequency_id, account_id, interest_method_id, currency_id, org_id, product_name, description, loan_account, is_active, interest_rate, min_opening_balance, lockin_period_frequency, minimum_balance, maximum_balance, minimum_day, maximum_day, minimum_trx, maximum_trx, details) VALUES (2, 4, 34005, 2, 1, 0, 'Basic loans', 'Basic loans', true, true, 12, 0, 0, 0, 0, 0, 0, 0, 0, NULL);
SELECT pg_catalog.setval('products_product_id_seq', 2, true);


INSERT INTO account_fees (activity_type_id, activity_frequency_id, product_id, org_id, account_fee_name, start_date, end_date, fee_amount, account_number, is_active) 
VALUES (21, 1, 1, 0, 'Opening account', '2017-01-01', NULL, 1000, '400000001', true);
INSERT INTO account_fees (activity_type_id, activity_frequency_id, product_id, org_id, account_fee_name, start_date, end_date, fee_ps, account_number, is_active) 
VALUES (22, 1, 1, 0, 'Transaction Charge', '2017-01-01', NULL, 1, '400000001', true);


--- Create Initial customer and customer account
INSERT INTO customers (customer_id, org_id, business_account, customer_name, identification_number, identification_type,
	client_email, telephone_number, date_of_birth, nationality, approve_status)
VALUES (0, 0, 2, 'OpenBaraza Bank', '0', 'Org', 'info@openbaraza.org', '+254', current_date, 'KE', 'Approved');

INSERT INTO deposit_accounts (customer_id, product_id, org_id, is_active, approve_status)
VALUES (0, 1, 0, true, 'Approved');


---- Workflow setup

INSERT INTO workflows (workflow_id, org_id, source_entity_id, workflow_name, table_name, table_link_field, table_link_id, approve_email, reject_email, approve_file, reject_file, details) 
VALUES (20, 0, 0, 'Customer Application', 'customers', NULL, NULL, 'Request approved', 'Request rejected', NULL, NULL, NULL);
INSERT INTO workflows (workflow_id, org_id, source_entity_id, workflow_name, table_name, table_link_field, table_link_id, approve_email, reject_email, approve_file, reject_file, details) 
VALUES (21, 0, 0, 'Account opening', 'deposit_accounts', NULL, NULL, 'Request approved', 'Request rejected', NULL, NULL, NULL);

INSERT INTO workflow_phases (workflow_phase_id, org_id, workflow_id, approval_entity_id, approval_level, return_level, escalation_days, escalation_hours, required_approvals, advice, notice, phase_narrative, advice_email, notice_email, advice_file, notice_file, details) 
VALUES (20, 0, 20, 0, 1, 0, 0, 3, 1, false, false, 'Approve', 'For your approval', 'Phase approved', NULL, NULL, NULL);
INSERT INTO workflow_phases (workflow_phase_id, org_id, workflow_id, approval_entity_id, approval_level, return_level, escalation_days, escalation_hours, required_approvals, advice, notice, phase_narrative, advice_email, notice_email, advice_file, notice_file, details) 
VALUES (21, 0, 21, 0, 1, 0, 0, 3, 1, false, false, 'Approve', 'For your approval', 'Phase approved', NULL, NULL, NULL);


