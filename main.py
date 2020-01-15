from cassandra.cluster import Cluster

cluster = Cluster(['127.0.0.1'], port=9042)

if __name__ == "__main__":
    session = cluster.connect('AutoDocument')
    session.execute('USE AutoDocument')

    #USERS
    
    session.execute("INSERT INTO AutoDocument.Users (id, username, password_hash, email) VALUES (1, 'Eugen1344', '6161B0A284159565A0F7D5DF2DD2698B5F87906CD91FF5322CAF179B451F5A41', 'eugen1344@gmail.com');")
    session.execute("INSERT INTO AutoDocument.Users (id, username, password_hash, email) VALUES (2, 'OrangeJuice', '6161B0A284159565A0F7D5DF2DD2698B5F87906CD91FF5322CAF179B451F5A41', 'orangejuice@gmail.com');")
    session.execute("INSERT INTO AutoDocument.Users (id, username, password_hash, email) VALUES (3, 'Maobuff', '6161B0A284159565A0F7D5DF2DD2698B5F87906CD91FF5322CAF179B451F5A41', 'maobuff@gmail.com');")
    
    session.execute("SELECT * FROM AutoDocument.Users;")
    
    session.execute("UPDATE AutoDocument.Users SET username = 'EUGEN' WHERE id = 1;")
    session.execute("SELECT * FROM AutoDocument.Users WHERE id = 1;")
    
    session.execute("SELECT id, username, email FROM AutoDocument.Users WHERE id = 1;")
    
    session.execute("DELETE FROM AutoDocument.Users WHERE id = 1;")
    session.execute("DELETE FROM AutoDocument.Users WHERE id = 2;")
    session.execute("DELETE FROM AutoDocument.Users WHERE id = 3;")
    
    #UserDocuments
    
    session.execute("INSERT INTO AutoDocument.UserDocuments (user_id, username, email, document_id, document_name, document_file) VALUES (1, 'Eugen1344', 'eugen1344@gmail.com', 1, 'LAB2', {path:'Eugen1344/LAB2.doc', upload_date:toTimestamp(now())});")
    session.execute("INSERT INTO AutoDocument.UserDocuments (user_id, username, email, document_id, document_name, document_file) VALUES (1, 'Eugen1344', 'eugen1344@gmail.com', 2, 'LAB!', {path:'Eugen1344/LAB!.doc', upload_date:toTimestamp(now())});")
    session.execute("INSERT INTO AutoDocument.UserDocuments (user_id, username, email, document_id, document_name, document_file) VALUES (1, 'Eugen1344', 'eugen1344@gmail.com', 3, 'LAB666', {path:'Eugen1344/LAB666.doc', upload_date:toTimestamp(now())});")

    session.execute("SELECT * FROM AutoDocument.UserDocuments;")
    
    session.execute("UPDATE AutoDocument.UserDocuments SET document_name = 'doc' WHERE user_id = 1 AND document_id = 2;")
    session.execute("SELECT * FROM AutoDocument.UserDocuments WHERE user_id = 1 AND document_id = 2;")
    
    session.execute("UPDATE AutoDocument.UserDocuments SET document_file = {path:'Eugen1344/doc.doc', upload_date:toTimestamp(now())} WHERE user_id = 1 AND document_id = 2;")
    session.execute("SELECT * FROM AutoDocument.UserDocuments WHERE user_id = 1 AND document_id = 2;")
    
    session.execute("SELECT document_file FROM AutoDocument.UserDocuments WHERE user_id = 1 AND document_id = 1;")
    
    session.execute("DELETE FROM AutoDocument.UserDocuments WHERE user_id = 1 AND document_id = 1;")
    session.execute("DELETE FROM AutoDocument.UserDocuments WHERE user_id = 1 AND document_id = 2;")
    session.execute("DELETE FROM AutoDocument.UserDocuments WHERE user_id = 1 AND document_id = 3;")
    
    #UserTemplates
    
    session.execute("INSERT INTO AutoDocument.UserTemplates (user_id, username, email, template_id, template_name, template_file) VALUES (1, 'Eugen1344', 'eugen1344@gmail.com', 1, 'LAB2', {path:'Eugen1344/LAB2.tex', upload_date:toTimestamp(now())});")
    session.execute("INSERT INTO AutoDocument.UserTemplates (user_id, username, email, template_id, template_name, template_file) VALUES (1, 'Eugen1344', 'eugen1344@gmail.com', 2, 'LAB!', {path:'Eugen1344/LAB!.tex', upload_date:toTimestamp(now())});")
    session.execute("INSERT INTO AutoDocument.UserTemplates (user_id, username, email, template_id, template_name, template_file) VALUES (1, 'Eugen1344', 'eugen1344@gmail.com', 3, 'LAB666', {path:'Eugen1344/LAB666.tex', upload_date:toTimestamp(now())});")
    
    session.execute("SELECT * FROM AutoDocument.UserTemplates;")
    
    session.execute("UPDATE AutoDocument.UserTemplates SET template_name = 'doc' WHERE user_id = 1 AND template_id = 2;")
    session.execute("SELECT * FROM AutoDocument.UserTemplates WHERE user_id = 1 AND template_id = 2;")
    
    session.execute("UPDATE AutoDocument.UserTemplates SET template_file = {path:'Eugen1344/doc.tex', upload_date:toTimestamp(now())} WHERE user_id = 1 AND template_id = 2;")
    session.execute("SELECT * FROM AutoDocument.UserTemplates WHERE user_id = 1 AND template_id = 2;")
    
    session.execute("SELECT template_file FROM AutoDocument.UserTemplates WHERE user_id = 1 AND template_id = 1;")
    
    session.execute("DELETE FROM AutoDocument.UserTemplates WHERE user_id = 1 AND template_id = 1;")
    session.execute("DELETE FROM AutoDocument.UserTemplates WHERE user_id = 1 AND template_id = 2;")
    session.execute("DELETE FROM AutoDocument.UserTemplates WHERE user_id = 1 AND template_id = 3;")
    
    
    #TemplateFields
    
    session.execute("INSERT INTO AutoDocument.TemplateFields (template_id, template_name, template_file, field_id, field_name, field_content) VALUES (1, 'LAB2', {path:'Eugen1344/LAB2.tex', upload_date:toTimestamp(now())}, 1, 'student_name', 'Eugen');")
    session.execute("INSERT INTO AutoDocument.TemplateFields (template_id, template_name, template_file, field_id, field_name, field_content) VALUES (1, 'LAB2', {path:'Eugen1344/LAB2.tex', upload_date:toTimestamp(now())}, 2, 'group_name', 'KM-61');")
    session.execute("INSERT INTO AutoDocument.TemplateFields (template_id, template_name, template_file, field_id, field_name, field_content) VALUES (1, 'LAB2', {path:'Eugen1344/LAB2.tex', upload_date:toTimestamp(now())}, 3, 'title', 'REPORT');")
    
    session.execute("SELECT * FROM AutoDocument.TemplateFields;")
    
    session.execute("UPDATE AutoDocument.TemplateFields SET field_content = 'Artem' WHERE template_id = 1 AND field_id = 1;")
    session.execute("SELECT * FROM AutoDocument.TemplateFields WHERE template_id = 1 AND field_id = 1;")
    
    session.execute("SELECT field_content FROM AutoDocument.TemplateFields WHERE template_id = 1 AND field_id = 1;")
    
    session.execute("DELETE FROM AutoDocument.TemplateFields WHERE template_id = 1 AND field_id = 1;")
    session.execute("DELETE FROM AutoDocument.TemplateFields WHERE template_id = 1 AND field_id = 2;")
    session.execute("DELETE FROM AutoDocument.TemplateFields WHERE template_id = 1 AND field_id = 3;")