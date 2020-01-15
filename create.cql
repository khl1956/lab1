CREATE KEYSPACE IF NOT EXISTS AutoDocument WITH REPLICATION = 
{
	'class' : 'SimpleStrategy', 'replication_factor' : 1
};

USE AutoDocument;

CREATE TYPE IF NOT EXISTS AutoDocument.FILE 
(
	path TEXT,
	upload_date TIMESTAMP
);

CREATE TABLE IF NOT EXISTS AutoDocument.Users
(
	id INT,
	username TEXT,
	password_hash TEXT,
	email TEXT,
	
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS AutoDocument.UserDocuments
(
	user_id INT,
	username TEXT STATIC,
	email TEXT STATIC,
	
	document_id INT,
	document_name TEXT,
	document_file FROZEN<FILE>,
	
	PRIMARY KEY (user_id, document_id)
);

CREATE TABLE IF NOT EXISTS AutoDocument.UserTemplates
(
	user_id INT,
	username TEXT STATIC,
	email TEXT STATIC,
	
	template_id INT,
	template_name TEXT,
	template_file FROZEN<FILE>,
	
	PRIMARY KEY (user_id, template_id)
);

CREATE TABLE IF NOT EXISTS AutoDocument.TemplateFields
(
	template_id INT,
	template_name TEXT STATIC,
	template_file FROZEN<FILE> STATIC,
	
	field_id INT,
	field_name TEXT,
	field_content TEXT,
	
	PRIMARY KEY (template_id, field_id)
);