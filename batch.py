from cassandra.cluster import Cluster

cluster = Cluster()
connection = cluster.connect('labwork1')

batch = """
BEGIN BATCH

INSERT INTO labwork1.presentation_server(user_name, user_phone, user_email, user_birthday, presentation_name, presentation_date, topic_name) VALUES ({"firstname": 'ccc', "lastname": 'cc'}, [{'3807777','77777'}] , 'ccc@gmail.com', '1.1.99', 'Music', '2020-11-09 13:00', 'Art');

UPDATE labwork1.presentation_server
SET topic_count = 2

WHERE presentation_name = 'Music';

APPLY BATCH;
"""
connection.execute(batch)