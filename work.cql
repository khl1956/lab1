INSERT INTO labwork1."User_Group_Subject_Task_Statement_Rating" (
 email,
 full_name,
 password,
 role,
 group_name,
 group_user_count,
 subject_name,
 task_name,
 task_description,
 task_deadline,
 statement_number,
 statement_date,
 mark
 ) VALUES (
  'Bob@Bob.com',
  {"first_name": 'Bob', "last_name": 'Bob'},
  'qwerty',
  'student',
  'km-61',
  111,
  'matan',
  'zad. Koshi',
  [{'reshit zad Koshi', 'tablica umnozhenia'}],
  '2020-01-05 12:00:00',
  228,
  '2019-12-25',
  5
 );
 
INSERT INTO labwork1."User_Group_Subject_Task_Statement_Rating" (
 email,
 full_name,
 password,
 role,
 group_name,
 group_user_count,
 subject_name,
 task_name,
 task_description,
 task_deadline,
 statement_number,
 statement_date,
 mark
 ) VALUES (
  'Boba@Boba.com',
  {"first_name": 'Boba', "last_name": 'Boba'},
  'qwerty12345',
  'student',
  'km-62',
  333,
  'DB',
  'lab1',
  [{'cassandra as database', 'flask as framework'}],
  '2019-12-18 23:00:00',
  229,
  '2019-12-25',
  4
 );
 
INSERT INTO labwork1."User_Group_Subject_Task_Statement_Rating" (
 email,
 full_name,
 password,
 role,
 group_name,
 group_user_count,
 subject_name,
 task_name,
 task_description,
 task_deadline,
 statement_number,
 statement_date,
 mark
 ) VALUES (
  'Bobo@Bobo.com',
  {"first_name": 'Bobo', "last_name": 'Bobo'},
  'qwertyqwerty',
  'student',
  'km-63',
  222,
  'descr',
  'pob graph',
  [{'pobuduvati graph','isledovat graph'}],
  '2019-12-25 10:30:00',
  230,
  '2019-12-25',
  4
 );

SELECT * FROM labwork1."User_Group_Subject_Task_Statement_Rating";


UPDATE labwork1."User_Group_Subject_Task_Statement_Rating"
SET full_name = { first_name: 'Bibi', last_name: 'Baba' }
WHERE email = 'Bob@Bob.com' AND
      group_name = 'km-61' AND
      subject_name = 'matan' AND
      task_name = 'zad. Koshi' AND
      statement_number = 228;
 
UPDATE labwork1."User_Group_Subject_Task_Statement_Rating"
SET mark = 5
WHERE email = 'Boba@Boba.com' AND
      group_name = 'km-63' AND
      subject_name = 'DB' AND
      task_name = 'lab1' AND
      statement_number = 229;
 
UPDATE labwork1."User_Group_Subject_Task_Statement_Rating"
SET task_deadline = '01-01-0001 00:00:00'
WHERE email = 'Bobo@Bobo.com' AND
      group_name = 'km-63' AND
      subject_name = 'descr' AND
      task_name = 'pob graph' AND
      statement_number = 230;
 
SELECT * FROM labwork1."User_Group_Subject_Task_Statement_Rating";

SELECT subject_name
FROM labwork1."User_Group_Subject_Task_Statement_Rating"
WHERE role = 'student' AND
     group_name = 'km-63' AND
     full_name = {"first_name": 'Bobo', "last_name": 'Bobo'} ALLOW FILTERING;;

SELECT full_name
FROM labwork1."User_Group_Subject_Task_Statement_Rating"
WHERE group_name = 'km-63';

SELECT email
FROM labwork1."User_Group_Subject_Task_Statement_Rating"
WHERE mark = 5 ALLOW FILTERING;;

SELECT full_name
FROM labwork1."User_Group_Subject_Task_Statement_Rating"
WHERE password = 'qwerty' AND
      email = 'Bob@Bob.com' ALLOW FILTERING;

DELETE group_user_count
FROM labwork1."User_Group_Subject_Task_Statement_Rating"
WHERE email = 'Bob@Bob.com';

 
DELETE statement_date
FROM labwork1."User_Group_Subject_Task_Statement_Rating"
WHERE email = 'Boba@Boba.com' AND
      group_name = 'km-63' AND
      task_name = 'lab1' AND
      subject_name = 'DB' AND
      statement_number = 229;

DELETE group_user_count
FROM labwork1."User_Group_Subject_Task_Statement_Rating"
WHERE email= 'Bob@Bob.com';
 
SELECT * FROM labwork1."User_Group_Subject_Task_Statement_Rating";
