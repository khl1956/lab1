INSERT INTO AutoDocument.Users (id, username, password_hash, email) VALUES (1, 'Eugen1344', '6161B0A284159565A0F7D5DF2DD2698B5F87906CD91FF5322CAF179B451F5A41', 'eugen1344@gmail.com');
INSERT INTO AutoDocument.Users (id, username, password_hash, email) VALUES (2, 'OrangeJuice', '6161B0A284159565A0F7D5DF2DD2698B5F87906CD91FF5322CAF179B451F5A41', 'orangejuice@gmail.com');
INSERT INTO AutoDocument.Users (id, username, password_hash, email) VALUES (3, 'Maobuff', '6161B0A284159565A0F7D5DF2DD2698B5F87906CD91FF5322CAF179B451F5A41', 'maobuff@gmail.com');

SELECT * FROM AutoDocument.Users;

UPDATE AutoDocument.Users SET username = 'EUGEN' WHERE id = 1;
SELECT * FROM AutoDocument.Users WHERE id = 1;

SELECT id, username, email FROM AutoDocument.Users WHERE id = 1;

DELETE FROM AutoDocument.Users WHERE id = 1;
DELETE FROM AutoDocument.Users WHERE id = 2;
DELETE FROM AutoDocument.Users WHERE id = 3;


INSERT INTO AutoDocument.UserDocuments (user_id, username, email, document_id, document_name, document_file) VALUES (1, 'Eugen1344', 'eugen1344@gmail.com', 1, 'LAB2', {path:'Eugen1344/LAB2.doc', upload_date:toTimestamp(now())});
INSERT INTO AutoDocument.UserDocuments (user_id, username, email, document_id, document_name, document_file) VALUES (1, 'Eugen1344', 'eugen1344@gmail.com', 2, 'LAB!', {path:'Eugen1344/LAB!.doc', upload_date:toTimestamp(now())});
INSERT INTO AutoDocument.UserDocuments (user_id, username, email, document_id, document_name, document_file) VALUES (1, 'Eugen1344', 'eugen1344@gmail.com', 3, 'LAB666', {path:'Eugen1344/LAB666.doc', upload_date:toTimestamp(now())});

SELECT * FROM AutoDocument.UserDocuments;

UPDATE AutoDocument.UserDocuments SET document_name = 'doc' WHERE user_id = 1 AND document_id = 2;
SELECT * FROM AutoDocument.UserDocuments WHERE user_id = 1 AND document_id = 2;

UPDATE AutoDocument.UserDocuments SET document_file = {path:'Eugen1344/doc.doc', upload_date:toTimestamp(now())} WHERE user_id = 1 AND document_id = 2;
SELECT * FROM AutoDocument.UserDocuments WHERE user_id = 1 AND document_id = 2;

SELECT document_file FROM AutoDocument.UserDocuments WHERE user_id = 1 AND document_id = 1;

DELETE FROM AutoDocument.UserDocuments WHERE user_id = 1 AND document_id = 1;
DELETE FROM AutoDocument.UserDocuments WHERE user_id = 1 AND document_id = 2;
DELETE FROM AutoDocument.UserDocuments WHERE user_id = 1 AND document_id = 3;


INSERT INTO AutoDocument.UserTemplates (user_id, username, email, template_id, template_name, template_file) VALUES (1, 'Eugen1344', 'eugen1344@gmail.com', 1, 'LAB2', {path:'Eugen1344/LAB2.tex', upload_date:toTimestamp(now())});
INSERT INTO AutoDocument.UserTemplates (user_id, username, email, template_id, template_name, template_file) VALUES (1, 'Eugen1344', 'eugen1344@gmail.com', 2, 'LAB!', {path:'Eugen1344/LAB!.tex', upload_date:toTimestamp(now())});
INSERT INTO AutoDocument.UserTemplates (user_id, username, email, template_id, template_name, template_file) VALUES (1, 'Eugen1344', 'eugen1344@gmail.com', 3, 'LAB666', {path:'Eugen1344/LAB666.tex', upload_date:toTimestamp(now())});

SELECT * FROM AutoDocument.UserTemplates;

UPDATE AutoDocument.UserTemplates SET template_name = 'doc' WHERE user_id = 1 AND template_id = 2;
SELECT * FROM AutoDocument.UserTemplates WHERE user_id = 1 AND template_id = 2;

UPDATE AutoDocument.UserTemplates SET template_file = {path:'Eugen1344/doc.tex', upload_date:toTimestamp(now())} WHERE user_id = 1 AND template_id = 2;
SELECT * FROM AutoDocument.UserTemplates WHERE user_id = 1 AND template_id = 2;

SELECT template_file FROM AutoDocument.UserTemplates WHERE user_id = 1 AND template_id = 1;

DELETE FROM AutoDocument.UserTemplates WHERE user_id = 1 AND template_id = 1;
DELETE FROM AutoDocument.UserTemplates WHERE user_id = 1 AND template_id = 2;
DELETE FROM AutoDocument.UserTemplates WHERE user_id = 1 AND template_id = 3;


INSERT INTO AutoDocument.TemplateFields (template_id, template_name, template_file, field_id, field_name, field_content) VALUES (1, 'LAB2', {path:'Eugen1344/LAB2.tex', upload_date:toTimestamp(now())}, 1, 'student_name', 'Eugen');
INSERT INTO AutoDocument.TemplateFields (template_id, template_name, template_file, field_id, field_name, field_content) VALUES (1, 'LAB2', {path:'Eugen1344/LAB2.tex', upload_date:toTimestamp(now())}, 2, 'group_name', 'KM-61');
INSERT INTO AutoDocument.TemplateFields (template_id, template_name, template_file, field_id, field_name, field_content) VALUES (1, 'LAB2', {path:'Eugen1344/LAB2.tex', upload_date:toTimestamp(now())}, 3, 'title', 'REPORT');

SELECT * FROM AutoDocument.TemplateFields;

UPDATE AutoDocument.TemplateFields SET field_content = 'Artem' WHERE template_id = 1 AND field_id = 1;
SELECT * FROM AutoDocument.TemplateFields WHERE template_id = 1 AND field_id = 1;

SELECT field_content FROM AutoDocument.TemplateFields WHERE template_id = 1 AND field_id = 1;

DELETE FROM AutoDocument.TemplateFields WHERE template_id = 1 AND field_id = 1;
DELETE FROM AutoDocument.TemplateFields WHERE template_id = 1 AND field_id = 2;
DELETE FROM AutoDocument.TemplateFields WHERE template_id = 1 AND field_id = 3;