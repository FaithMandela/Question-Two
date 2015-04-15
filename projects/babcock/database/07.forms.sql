
SELECT pg_catalog.setval('forms_form_id_seq', 4, true);

INSERT INTO forms (form_id, org_id, form_name, form_number, version, completed, is_active, form_header, form_footer, details) VALUES (4, 0, 'UNDERGRADUATE ADMISSION', '1', '1', '0', '0', '<img src="resources/images/babcock.png" alt="No  image">
<p>PLEASE PROVIDE ALL INFORMATION REQUESTED ON THIS FORM<br></p><p>PERSONAL DATA</p>', NULL, NULL);

DELETE FROM sub_fields;
DELETE FROM fields;

SELECT pg_catalog.setval('fields_field_id_seq', 299, true);

INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (266, 0, 4, 'Patents/Guardians Residential Address', NULL, 'TEXTFIELD', NULL, '0', '0', 150, NULL, 60, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (267, 0, 4, 'Patents/Guardians Email', NULL, 'TEXTFIELD', NULL, '0', '0', 160, 160, 24, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (268, 0, 4, 'Patents/Guardians Mobile Number', NULL, 'TEXTFIELD', NULL, '0', '0', 170, 160, 25, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (254, 0, 4, 'Other Names', NULL, 'TEXTFIELD', NULL, '0', '0', 30, 10, 20, 'L', '1', '1', NULL, NULL, 'othernames', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (270, 0, 4, 'EXAM NAME', 'NECO#WAEC#GCE', 'LIST', NULL, '0', '0', 190, 165, 25, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (278, NULL, 4, 'Select Courses(2 Options Only)', NULL, 'TITLE', NULL, '0', '0', 200, NULL, 25, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (255, 0, 4, 'Residential Address ', NULL, 'TEXTFIELD', NULL, '0', '0', 40, NULL, 68, 'L', '1', '1', NULL, NULL, 'homeaddress', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (279, NULL, 4, 'Option One', NULL, 'TITLE', NULL, '0', '0', 210, 210, 25, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (256, 0, 4, 'Email', NULL, 'TEXTFIELD', NULL, '0', '0', 50, 50, 33, 'L', '1', '1', NULL, NULL, 'email', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (283, NULL, 4, 'Option Two', NULL, 'TITLE', NULL, '0', '0', 250, NULL, 25, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (257, 0, 4, 'Phone Number', NULL, 'TEXTFIELD', NULL, '0', '0', 60, 50, 34, 'L', '1', '1', NULL, NULL, 'phonenumber', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (287, NULL, 4, 'ACADEMIC RECORDS', NULL, 'TITLE', NULL, '0', '0', 290, NULL, 25, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (260, 0, 4, 'Gender', 'Male#Female', 'LIST', NULL, '0', '0', 90, 80, 10, 'L', '1', '1', NULL, NULL, 'Sex', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (290, NULL, 4, 'EXAM NAME', 'NECO#WAEC#GCE', 'LIST', NULL, '0', '0', 320, 320, 25, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (262, 0, 4, 'Marital Status', 'Single#Married', 'LIST', NULL, '0', '0', 110, 100, 40, 'L', '1', '1', NULL, NULL, 'MaritalStatus', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (293, NULL, 4, 'EXAMINATION PASSED OR ENTERED FOR((list all schools attended, with dates ,start with most recent)', NULL, 'TABLE', NULL, '0', '0', 340, NULL, 25, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (289, NULL, 4, ' JAMB EXAM NO', NULL, 'TEXTFIELD', NULL, '0', '0', 310, 300, 33, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (288, NULL, 4, 'JAMB REG NO', 'NECO#WAEC#GCE', 'TEXTFIELD', NULL, '0', '0', 300, 300, 31, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (252, 0, 4, 'Surname', NULL, 'TEXTFIELD', NULL, '0', '0', 10, 10, 20, 'L', '1', '1', NULL, NULL, 'surname', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (253, 0, 4, 'First Name', NULL, 'TEXTFIELD', NULL, '0', '0', 20, 10, 20, 'L', '1', '1', NULL, NULL, 'firstname', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (263, 0, 4, 'Religious Preference', 'Christianity#Islam#Others', 'LIST', NULL, '0', '0', 120, NULL, 25, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (265, 0, 4, 'Patents/Guardians Name', NULL, 'TEXTFIELD', NULL, '0', '0', 140, NULL, 67, 'L', '1', '1', NULL, NULL, 'guardian', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (295, 0, 4, 'Exam One', NULL, 'TITLE', NULL, '0', '0', 315, NULL, 25, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (296, 0, 4, 'Exam Two', NULL, 'TITLE', NULL, '0', '0', 350, NULL, 25, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (297, 0, 4, 'EXAM NAME', 'NECO#WAEC#GCE', 'LIST', NULL, '0', '0', 360, 360, 25, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (299, 0, 4, 'EXAMINATION PASSED OR ENTERED FOR((list all schools attended, with dates ,start with most recent)', NULL, 'TABLE', NULL, '0', '0', 380, NULL, 25, 'L', '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (264, 0, 4, 'If Christian, Denominationn', 'SELECT denominationid, denominationname from denominations;', 'SELECT', NULL, '0', '0', 130, NULL, 65, 'L', '1', '1', NULL, NULL, 'denominationid', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (258, 0, 4, 'Country', 'SELECT sys_country_id,sys_country_name FROM sys_countrys;', 'SELECT', NULL, '0', '0', 70, 70, 20, 'L', '1', '1', NULL, NULL, 'nationalityid', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (259, 0, 4, 'Date of Birth in form dd/mm/yyyy e.g 13/02/2013', NULL, 'DATE', NULL, '0', '0', 80, 80, 12, 'L', '1', '1', NULL, NULL, 'birthdate', 'to_date(''#'', ''DD/MM/YYYY'')');
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (291, NULL, 4, 'EXAM DATE', NULL, 'DATE', NULL, '0', '0', 330, 320, 27, 'L', '1', '1', NULL, NULL, NULL, 'to_date(''#'', ''DD/MM/YYYY'')');
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (298, 0, 4, '	EXAM DATE', NULL, 'DATE', NULL, '0', '0', 370, 360, 27, 'L', '1', '1', NULL, NULL, NULL, 'to_date(''#'', ''DD/MM/YYYY'')');
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (282, NULL, 4, 'Course', 'select majorid, major_title from majors where is_active = true;', 'SELECT', NULL, '0', '0', 240, NULL, 25, 'L', '1', '1', NULL, NULL, 'firstchoiceid', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (286, NULL, 4, 'Courses', 'select majorid, major_title from majors where is_active = true;', 'SELECT', NULL, '0', '0', 280, NULL, 25, 'L', '1', '1', NULL, NULL, 'secondchoiceid', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (294, NULL, 4, 'State', 'select stateid, statename from states;', 'SELECT', NULL, '0', '0', 71, NULL, 25, 'L', '1', '1', NULL, NULL, 'birthstateid', NULL);
INSERT INTO fields (field_id, org_id, form_id, question, field_lookup, field_type, field_class, field_bold, field_italics, field_order, share_line, field_size, label_position, manditory, show, details, tab, field_name, field_fnct) VALUES (261, 0, 4, 'Birth Place', NULL, 'TEXTFIELD', NULL, '0', '0', 100, 100, 26, 'L', '1', '1', NULL, NULL, NULL, NULL);


SELECT pg_catalog.setval('sub_fields_sub_field_id_seq', 4, true);

INSERT INTO sub_fields (sub_field_id, org_id, field_id, sub_field_order, sub_title_share, sub_field_type, sub_field_lookup, sub_field_size, sub_col_spans, manditory, show, question) VALUES (2, NULL, 293, 2, NULL, 'TEXTFIELD', NULL, 5, 1, '0', '0', 'GRADE');
INSERT INTO sub_fields (sub_field_id, org_id, field_id, sub_field_order, sub_title_share, sub_field_type, sub_field_lookup, sub_field_size, sub_col_spans, manditory, show, question) VALUES (4, 0, 299, 2, NULL, 'TEXTFIELD', NULL, 5, 1, '0', '0', 'GRADE');
INSERT INTO sub_fields (sub_field_id, org_id, field_id, sub_field_order, sub_title_share, sub_field_type, sub_field_lookup, sub_field_size, sub_col_spans, manditory, show, question) VALUES (1, NULL, 293, 1, NULL, 'SELECT', 'SELECT subjectid, subjectname FROM subjects;', 5, 1, '0', '0', 'SUBJECTS');
INSERT INTO sub_fields (sub_field_id, org_id, field_id, sub_field_order, sub_title_share, sub_field_type, sub_field_lookup, sub_field_size, sub_col_spans, manditory, show, question) VALUES (3, 0, 299, 1, NULL, 'SELECT', 'SELECT subjectid, subjectname FROM subjects;', 5, 1, '0', '0', 'SUBJECTS');

