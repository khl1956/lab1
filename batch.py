from cassandra.cluster import Cluster

cluster = Cluster()
connection = cluster.connect('labwork1')

batch = """
BEGIN BATCH
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
 
APPLY BATCH;
"""
connection.execute(batch)