from cassandra.cluster import Cluster

cluster = Cluster()
connection = cluster.connect('lab1')

batch = """
BEGIN BATCH
INSERT INTO user_code (email, name, info, project_name, programing_language, functions_names, functions_ parametrs, classes_names)
VALUES ('serg24@gmail.com', 'Sergei', {age:18,university:'KPI'}, 'course_work', 'Python', {'adding', 'multiplying'}, {{120,70,30},{14,4,5}}, {'class1', 'class2'});

 
INSERT INTO code_documentation (project_name, programing_language, functions_names, functions_ parametrs, classes_names, save_link, brief_desc, detailed_desc, recommendation)
VALUES ('course_work', 'Python', {'adding', 'multiplying'}, {{120,70,30},{14,4,5}},{'class1', 'class2'}, 'https://github.com/serg', 'Math programm', 'Programm performs mathematical operations', 'It's ok');
 
APPLY BATCH;
"""
connection.execute(batch)