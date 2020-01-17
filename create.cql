CREATE KEYSPACE IF NOT EXISTS labwork1 WITH replication = {
	'class': 'SimpleStrategy',
	'replication_factor': '1'
};

CREATE TYPE IF NOT EXISTS labwork1.user_name_type(
	firstname text,
	lastname text
);


CREATE TABLE IF NOT EXISTS labwork1."Presentation_Server"(
	user_name frozen<labwork1.user_name_type>,
	user_phone  LIST<frozen<SET<text>>>,
	user_email text,
	user_birthday text,
	
	presentation_name text,
	presentation_date timestamp,
	
	topic_name text,
	
	PRIMARY KEY ((user_email), presentation_name, topic_name)
);


CREATE TABLE IF NOT EXISTS labwork1."Presentation"(
	presentation_name text,
	presentation_date timestamp,
	
	participant_list text,
	participant_name text,
	participant_count int STATIC,
	
	PRIMARY KEY (presentation_name, participant_list)
);


CREATE INDEX p_name on labwork1."Presentation_Server"(presentation_name);
CREATE INDEX t_name on labwork1."Presentation"(topic_name);