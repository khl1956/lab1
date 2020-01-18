from cassandra.cluster import Cluster

cluster = Cluster()
connection = cluster.connect('lab1')

batch = """
INSERT INTO user_code (email, name, info, project_name, programing_language, functions_names, functions_ parametrs, classes_names)
VALUES ('serg24@gmail.com', 'Sergei', {age:18,university:'KPI'}, 'course_work', 'Python', {'adding', 'multiplying'}, {{120,70,30},{14,4,5}}, {'class1', 'class2'});

 
INSERT INTO code_documentation (project_name, programing_language, functions_names, functions_ parametrs, classes_names, save_link, brief_desc, detailed_desc, recommendation)
VALUES ('course_work', 'Python', {'adding', 'multiplying'}, {{120,70,30},{14,4,5}},{'class1', 'class2'}, 'https://github.com/serg', 'Math programm', 'Programm performs mathematical operations', 'It's ok');
 
APPLY BATCH;
"""

batch = """
BEGIN BATCH
INSERT INTO country_count_of_comments (human, country , save_link, comment text)
VALUES ({birtdate:'18.01.1997',FIO:'Ivanov Ivan Ivanovich'}, 'Ukraine', 'https://github.com/Ivan', 'I liked it')

INSERT INTO country_count_of_comments (human, country , save_link, comment text)
VALUES ({birtdate:'19.02.1992',FIO:'Ivanov Ivan Petrovich'}, 'Russia', 'https://github.com/Petrovich', 'I disliked it')

INSERT INTO country_count_of_comments (human, country , save_link, comment text)
VALUES ({birtdate:'19.02.1993',FIO:'Petrov Ivan Petrovich'}, 'Russia', 'https://github.com/Petrovich', 'I disliked it too')

APPLY BATCH;
"""

batch = """
BEGIN BATCH

DELETE 
FROM country_count_of_comments
WHERE save_link = 'https://github.com/Petrovich' AND comment text = 'I disliked it';

APPLY BATCH;
"""

connection.execute(batch)