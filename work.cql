INSERT INTO labwork1."User_Presentation_Topic" (user_name, user_phone, user_email, user_birthday, presentation_name, presentation_date, topic_name) VALUES ({"firstname": 'aaa', "lastname": 'aa'}, [{'3806600','83855'}] , 'aaa@gmail.com', '1.1.99', 'sales_development', '2020-01-10 12:00', 'sales');
INSERT INTO labwork1."User_Presentation_Topic" (user_name, user_phone, user_email, user_birthday, presentation_name, presentation_date, topic_name) VALUES ({"firstname": 'bbb', "lastname": 'bb'}, [{'3808888','88888'}] , 'bbb@gmail.com', '12.1.99', 'DataBase', '2020-10-01 12:00', 'computer');
INSERT INTO labwork1."User_Presentation_Topic" (user_name, user_phone, user_email, user_birthday, presentation_name, presentation_date, topic_name) VALUES ({"firstname": 'ccc', "lastname": 'cc'}, [{'3807777','77777'}] , 'ccc@gmail.com', '1.1.99', 'Music', '2020-11-09 13:00', 'Art');

SELECT * FROM labwork1."User_Presentation_Topic";

INSERT INTO labwork1."Presentation_Participant" (presentation_name, presentation_date, topic_name, participant_list, topic_count) VALUES ('sales_development', '2020-01-10 12:00', 'sales', 'part list 1', 1);
INSERT INTO labwork1."Presentation_Participant" (presentation_name, presentation_date, topic_name, participant_list, topic_count) VALUES ('DataBase', '2020-10-01 12:00', 'computer', 'part list 2', 2);
INSERT INTO labwork1."Presentation_Participant" (presentation_name, presentation_date, topic_name, participant_list, topic_count) VALUES ('Music', '2020-11-09 13:00', 'Art', 'part list 3', 3);

SELECT * FROM labwork1."Presentation_Participant";

INSERT INTO labwork1."Team_presentation" (team_member, team_name, presentation_name, presentation_date) VALUES ({"title": 'manager', "full_name": 'Alex Smith'}, 'Team1', 'DataBase', '2020-10-01 12:00');
INSERT INTO labwork1."Team_presentation" (team_member, team_name, presentation_name, presentation_date) VALUES ({"title": 'assistant', "full_name": 'Sam Simonich'}, 'Team1', 'DataBase', '2020-10-01 12:00');

SELECT * FROM labwork1."Team_presentation";

UPDATE labwork1."User_Presentation_Topic"
SET 
	user_name={
					firstname: 'Updated',
					lastname: 'lastname'
				}
WHERE user_email = 'aaa@gmail.com' AND presentation_name = 'sales_development' AND topic_name = 'sales' IF EXISTS;

SELECT * FROM labwork1."User_Presentation_Topic";


UPDATE labwork1."User_Presentation_Topic"
SET user_birthday = 'UPDATED'
WHERE user_email = 'ccc@gmail.com' AND presentation_name = 'Music' AND topic_name = 'Art' IF EXISTS;

SELECT * FROM labwork1."User_Presentation_Topic";


UPDATE labwork1."User_Presentation_Topic"
SET user_phone = [{'Updated','066008'}]
WHERE user_email = 'bbb@gmail.com' AND presentation_name = 'DataBase' AND topic_name = 'computer' IF EXISTS;

SELECT * FROM labwork1."User_Presentation_Topic";


UPDATE labwork1."Presentation_Participant"
SET participant_list = 'UPDATED'
WHERE presentation_name = 'sales_development' AND topic_name = 'sales';

SELECT * FROM labwork1."Presentation_Participant";

UPDATE labwork1."Presentation_Participant"
SET topic_count = 2
WHERE presentation_name = 'DataBase';

SELECT * FROM labwork1."Presentation_Participant";

UPDATE labwork1."Presentation_Participant"
SET presentation_date = '2020-11-09 13:00'
WHERE presentation_name = 'Music' AND topic_name = 'Art';

SELECT * FROM labwork1."Presentation_Participant";

SELECT user_name, presentation_name 
FROM labwork1."User_Presentation_Topic"
WHERE presentation_name = 'sales_development';


SELECT user_name, topic_name
FROM labwork1."User_Presentation_Topic"
WHERE user_email = 'aaa@gmail.com';


SELECT presentation_name, topic_name
FROM labwork1."User_Presentation_Topic"
WHERE  presentation_name = 'DataBase';

SELECT presentation_name, participant_list
FROM labwork1."Presentation_Participant"
WHERE  participant_list = 'part list 1';



DELETE user_phone[0]
FROM labwork1."User_Presentation_Topic"
WHERE user_email = 'aaa@gmail.com' AND presentation_name = 'sales_development' AND topic_name = 'sales';

SELECT * FROM labwork1."User_Presentation_Topic";

DELETE user_birthday
FROM labwork1."User_Presentation_Topic"
WHERE user_email = 'bbb@gmail.com' AND presentation_name = 'DataBase' AND topic_name = 'computer';

SELECT * FROM labwork1."User_Presentation_Topic";

DELETE user_name
FROM labwork1."User_Presentation_Topic"
WHERE user_email = 'ccc@gmail.com' AND presentation_name = 'Music' AND topic_name = 'Art';

SELECT * FROM labwork1."User_Presentation_Topic";



DELETE topic_count 
FROM labwork1."Presentation_Participant"
WHERE presentation_name = 'sales_development';

SELECT * FROM labwork1."Presentation_Participant";

DELETE presentation_date
FROM labwork1."Presentation_Participant"
WHERE presentation_name = 'Music' AND topic_name = 'Art' ;

SELECT * FROM labwork1."Presentation_Participant";

DELETE participant_list, topic_count
FROM labwork1."Presentation_Participant"
WHERE presentation_name = 'DataBase' AND topic_name = 'computer' ;

SELECT * FROM labwork1."Presentation_Participant";



DELETE presentation_name, presentation_date, team_name, team_member
FROM labwork1."Team_Presentation"
WHERE presentation_name = 'Data_Base';

SELECT * FROM labwork1."Team_Presentation"