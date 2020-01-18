from cassandra.cluster import Cluster

cluster = Cluster()
connection = cluster.connect('labwork1')

batch = """
BEGIN BATCH

INSERT INTO labwork1.User_Presentation_Topic(user_name, user_phone, user_email, user_birthday, presentation_name, presentation_date, topic_name) VALUES ({"firstname": 'ccc', "lastname": 'cc'}, [{'3807777','77777'}] , 'ccc@gmail.com', '1.1.99', 'Music', '2020-11-09 13:00', 'Art');

UPDATE labwork1.User_Presentation_Topic
SET topic_count = 2

WHERE presentation_name = 'Music';

APPLY BATCH;
"""
connection.execute(batch)



batch = """
BEGIN BATCH

INSERT INTO labwork1."Team_presentation" (team_member, team_name, presentation_name, presentation_date) VALUES ({"title": 'manager', "full_name": 'Alex Smith'}, 'Team1', 'DataBase', '2020-10-01 12:00');

UPDATE labwork1.Team_Presentation
SET team_member_count = 1

WHERE team_name = 'Team1';

APPLY BATCH;
"""
connection.execute(batch)


batch = """
BEGIN BATCH

INSERT INTO labwork1."Team_presentation" (team_member, team_name, presentation_name, presentation_date) VALUES ({"title": 'assistant', "full_name": 'Sam Simonich'}, 'Team1', 'DataBase', '2020-10-01 12:00');

UPDATE labwork1.Team_Presentation
SET team_member_count = 2

WHERE team_name = 'Team1';

APPLY BATCH;
"""
connection.execute(batch)

#Видалити одну Presentation та усі Team, що пов’язані з нею
batch = """
BEGIN BATCH

DELETE
FROM labwork1."Team_Presentation"

WHERE presentation_name = 'Data_Base';

APPLY BATCH;
"""
connection.execute(batch)

