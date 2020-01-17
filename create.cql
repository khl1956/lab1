CREATE KEYSPACE IF NOT EXISTS lab1 WITH replication = {
	'class': 'SimpleStrategy',
	'replication_factor': '1'
};
USE lab1;

CREATE TYPE IF NOT EXISTS info_type (
	age int,
	university text
);

//ÐÅÀË²ÇÎÂÀÍ² ÊÎÐÈÑÒÓÂÀÖÜÊ² ÒÀ ÂÊËÀÄÅÍ² ÒÈÏÈ ÄÀÍÈÕ
CREATE TABLE IF NOT EXISTS user_code (
	email varchar, 
	name varchar static,
	info FROZEN<info_type> static,
	project_name text,	
	programing_language varchar,
	functions_names set<text>,
	functions_parametrs set<FROZEN<set<float>>>, 
	classes_names set<text>,
	PRIMARY KEY ((email), project_name)	
);

CREATE TABLE IF NOT EXISTS code_documentation (
	project_name text,	
	programing_language varchar static,
	functions_names set<text> static,
	functions_parametrs set<FROZEN<set<float>>> static, 
	classes_names set<text> static,
	save_link varchar,
	brief_desc text, 	
	detailed_desc text,
	recommendation text,
	PRIMARY KEY ((project_name), save_link)
);

CREATE TABLE IF NOT EXISTS documentation_discusion (
	save_link varchar,
	brief_desc text static, 	
	detailed_desc text static,
	recommendation text static, 
	discusion_tred text, 
	mark int, 
	comment text,
	PRIMARY KEY ((save_link), comment)
);

//ÐÅÀË²ÇÎÂÀÍÈÉ Ë²×ÈËÜÍÈÊ
CREATE TABLE IF NOT EXISTS count_of_comments (
	save_link varchar,
	comment text,
	comments_count counter,
	PRIMARY KEY ((save_link), comment)
);








