CREATE KEYSPACE IF NOT EXISTS labwork1 WITH replication = {
  'class': 'SimpleStrategy',
  'replication_factor': '1'
};

CREATE TYPE IF NOT EXISTS labwork1.full_name_type (
 first_name text,
 last_name text,
);

CREATE TYPE IF NOT EXISTS labwork1.full_name_autor_type (
 first_name text,
 middle_name text,
 last_name text,
);

CREATE TYPE IF NOT EXISTS labwork1.autor_list_type (
 first_name text,
 middle_name text,
 last_name text
);

CREATE TABLE IF NOT EXISTS labwork1."Book" (
    book_title text,
    author_list list<frozen<labwork1.autor_list_type>>,

    author_name frozen<labwork1.full_name_autor_type>,
    author_country text,

     PRIMARY KEY (book_title)
);

CREATE TABLE IF NOT EXISTS labwork1."User_Group_Subject_Task_Statement_Rating" (
 email text,
 full_name frozen<labwork1.full_name_type>,
 password text,
 role text,

 book_title text,
 author_list frozen<labwork1.autor_list_type>,
 
 group_name text,
 group_user_count int STATIC,

 subject_name text,

 task_name text,
 task_description list<frozen<set<text>>>,
 task_deadline timestamp,

 statement_number int,
 statement_date date,
 
 mark int,

 PRIMARY KEY ((email), book_title, group_name, subject_name, task_name, statement_number)
);

CREATE INDEX u_name on labwork1."User_Group_Subject_Task_Statement_Rating"(full_name);
CREATE INDEX g_name on labwork1."User_Group_Subject_Task_Statement_Rating"(group_name);
CREATE INDEX t_name on labwork1."User_Group_Subject_Task_Statement_Rating"(task_name);
CREATE INDEX s_number on labwork1."User_Group_Subject_Task_Statement_Rating"(statement_number);

