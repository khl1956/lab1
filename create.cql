CREATE KEYSPACE IF NOT EXISTS labwork1 WITH replication = {
	'class': 'SimpleStrategy',
	'replication_factor': '1'
};

CREATE TYPE IF NOT EXISTS labwork1.user_name_type(
	firstname text,
	lastname text
);

CREATE TYPE IF NOT EXISTS labwork1.team_member_type(
    title text,
    full_name text
);


CREATE TABLE IF NOT EXISTS labwork1."User_Presentation_Topic"(
	user_name frozen<labwork1.user_name_type>,
	user_phone  LIST<frozen<SET<text>>>,
	user_email text,
	user_birthday text,
	
	presentation_name text,
	presentation_date timestamp,
	
	topic_name text,
	
	PRIMARY KEY ((user_email), presentation_name, topic_name)
);


CREATE TABLE IF NOT EXISTS labwork1."Presentation_Participant"(
	presentation_name text,
	presentation_date timestamp,
	
	participant_list text,
	participant_name text,
	participant_count int STATIC,
	
	PRIMARY KEY (presentation_name, participant_list)
);

CREATE TABLE IF NOT EXISTS labwork1."Team_Presentation"(
    team_member frozen<labwork1.team_member_type>,
    team_name,

    presentation_name text,
    presentation_date timestamp,
    
    PRIMARY KEY (team_name, presentation_name)
);



CREATE INDEX p_name on labwork1."User_Presentation_Topic"(presentation_name);
CREATE INDEX p_list on labwork1."Presentation_Participant"(participant_list);
