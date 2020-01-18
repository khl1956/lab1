//----------ƒÀﬂ œ≈–ÿŒØ “¿¡À»÷≤----------//

//INSERT
INSERT INTO user_code (email, name, info, project_name, programing_language, functions_names, functions_ parametrs, classes_names)
VALUES ('serg24@gmail.com', 'Sergei', {age:18,university:'KPI'}, 'course_work', 'Python', {'adding', 'multiplying'}, {{120,70,30},{14,4,5}}, {'class1', 'class2'});

INSERT INTO user_code (email, name, info, project_name, programing_language, functions_names, functions_ parametrs, classes_names)
VALUES ('antoha@mail.ru', 'Anton', {age:19,university:'NAU'}, 'lab_work1', 'C++', {'insert', 'delete'}, {{100,20},{14,536}}, {'class1', 'class2'});

INSERT INTO user_code (email, project_name, programing_language, functions_names, functions_ parametrs, classes_names)
VALUES ('antoha@mail.ru', 'lab_work2', 'C++', {'update'}, {{100,20}}, {'class3, class4'});

SELECT * FROM user_code;

//UPDATE
UPDATE user_code 
SET functions_names = functions_names + {'division'} 
WHERE email = 'serg24@gmail.com' and project_name = 'course_work';
SELECT * FROM user_code;

UPDATE user_code 
SET name = 'Sergey' 
WHERE email = 'serg24@gmail.com';
SELECT * FROM user_code;

UPDATE user_code 
SET info = {age:20,university:'KNUBA'}
WHERE email = 'antoha@mail.ru';
SELECT * FROM user_code;

//«¿œ»“
SELECT name, project_name
FROM user_code
WHERE email = 'serg24@gmail.com';

//DELETE
DELETE classes_names
FROM user_code
WHERE email = 'serg24@gmail.com';
SELECT * FROM user_code;

DELETE 
FROM user_code
WHERE email = 'serg24@gmail.com';
SELECT * FROM user_code;

DELETE name
FROM user_code
WHERE email = 'antoha@mail.ru';
SELECT * FROM user_code;

//----------ƒÀﬂ ƒ–”√ŒØ “¿¡À»÷≤----------//

//INSERT
INSERT INTO code_documentation (project_name, programing_language, functions_names, functions_ parametrs, classes_names, save_link, brief_desc, detailed_desc, recommendation)
VALUES ('course_work', 'Python', {'adding', 'multiplying'}, {{120,70,30},{14,4,5}},{'class1', 'class2'}, 'https://github.com/serg', 'Math programm', 'Programm performs mathematical operations', 'It's ok');

INSERT INTO code_documentation (project_name, programing_language, functions_names, functions_ parametrs, classes_names, save_link, brief_desc, detailed_desc, recommendation)
VALUES ('lab_work1', 'C++', {'insert', 'delete'}, {{100,20},{14,536}}, {'class1', 'class2'}, 'https://github.com/anton', 'Data programm', 'Programm puts numbers in spreedshets', 'Needs improvment');

INSERT INTO code_documentation (project_name, save_link, brief_desc, detailed_desc, recommendation)
VALUES ('course_work', 'https://github.com/serg2', 'Caluculs programm', 'Programm  adds and multiplyes numbers', 'It's ok');


SELECT * FROM code_documentation;

//UPDATE
UPDATE code_documentation 
SET recommendation = 'Incorect parametrs' 
WHERE project_name = 'course_work' AND save_link = 'https://github.com/serg';
SELECT * FROM code_documentation;

UPDATE code_documentation 
SET detailed_desc = 'Programm places numbers in spreedshets' 
WHERE project_name = 'course_work' AND save_link = 'https://github.com/serg2';
SELECT * FROM code_documentation;

UPDATE code_documentation 
SET classes_names = {'class_ins', 'class_del'}
WHERE project_name = 'lab_work1';
SELECT * FROM code_documentation;

//«¿œ»“
SELECT project_name, recommendation
FROM code_documentation 
WHERE project_name = 'course_work';

//DELETE
DELETE recommendation
FROM code_documentation
WHERE project_name = 'lab_work1' AND save_link = 'https://github.com/anton';
SELECT * FROM symptom_disease;

DELETE 
FROM code_documentation
WHERE project_name = 'course_work' AND save_link = 'https://github.com/serg2';
SELECT * FROM code_documentation;

DELETE brief_desc
FROM code_documentation
WHERE project_name = 'course_work' ;
SELECT * FROM code_documentation;

//----------ƒÀﬂ “–≈“‹ŒØ “¿¡À»÷≤----------//

//INSERT
INSERT INTO documentation_discusion (save_link, brief_desc, detailed_desc, recommendation, discusion_tred, mark, comment)
VALUES ('https://github.com/serg', 'Math programm', 'Programm performs mathematical operations', 'It's ok', 'About functions', '6', 'He should rename them');

INSERT INTO documentation_discusion (save_link, brief_desc, detailed_desc, recommendation, discusion_tred, mark, comment)
VALUES ('https://github.com/anton', 'Data programm', 'Programm puts numbers in spreedshets', 'Needs improvment', 'Functionality', '10', 'Great');

INSERT INTO documentation_discusion (save_link, discusion_tred, mark, comment)
VALUES ('https://github.com/serg', 'About functions', '7', 'He really should');

SELECT * FROM documentation_discusion;

//UPDATE
UPDATE documentation_discusion 
SET mark = 9
WHERE save_link = 'https://github.com/serg' AND comment = 'Great';
SELECT * FROM documentation_discusion;

UPDATE documentation_discusion 
SET discusion_tred = 'New tred'
WHERE save_link = 'https://github.com/serg' AND comment = 'Great';
SELECT * FROM documentation_discusion;

UPDATE recommendation documentation_discusion 
SET recommendation = 'No recomendation'
WHERE save_link = 'https://github.com/anton';
SELECT * FROM documentation_discusion;

//«¿œ»“
SELECT discusion_tred 
FROM documentation_discusion
WHERE save_link = 'https://github.com/serg';

//DELETE
DELETE mark
FROM documentation_discusion
WHERE save_link = 'https://github.com/serg' AND comment = 'Great';
SELECT * FROM documentation_discusion;

DELETE 
FROM documentation_discusion
WHERE save_link = 'https://github.com/serg' AND comment = 'Great';
SELECT * FROM documentation_discusion;

DELETE discusion_tred
FROM documentation_discusion
WHERE save_link = 'https://github.com/anton';
SELECT * FROM documentation_discusion;





