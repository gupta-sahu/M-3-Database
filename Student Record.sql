SHOW databases;
drop database studentrecorddb;
drop database studentrecordsdb;
CREATE DATABASE StudentRecordDB;
USE StudentRecordDB;
CREATE TABLE Students (
student_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
age INT NOT NULL,
class_id INT NOT NULL,
total_score INT NOT NULL
);
INSERT INTO Students (first_name, last_name, age, class_id, total_score)
VALUES
('Alisha', 'sujith', 15, 10, 420),
('Bella', 'johnson', 16, 11, 320),
('Chirag', 'Ram', 14, 10, 275),
('Deepika', 'Kumar', 17, 12, 380),
('Hari', 'Krishnan', 15, 10, 500);
SELECT * FROM Students;
SELECT AVG(total_score) AS average_score FROM Students;
UPDATE Students
SET total_score = 10
WHERE student_id = 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE Students
SET age = age + 1
WHERE class_id = 10;
SET SQL_SAFE_UPDATES= 1;

select * from Students;
DELETE FROM Students
WHERE student_id = 3;
select * from students;
DELETE FROM Students
WHERE total_score < 300;
select * from Students;


