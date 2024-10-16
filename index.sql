-- 1
SELECT * 
FROM `students`
WHERE YEAR(`sate_of_birth`) = 1990;

-- 2
SELECT * 
FROM `courses`
WHERE `cfu` > 10;

-- 3
SELECT * 
FROM `students`
WHERE YEAR(`date_of_birth`) < 1994;

-- 4
SELECT * 
FROM `courses`
WHERE `year` = 1
AND `period` = "I semestre";

-- 5
SELECT * 
FROM `exams` 
WHERE `hour` > '14%'
AND `date` = '2020-06-20';

-- 6
SELECT * 
FROM `degrees` 
WHERE `level` = 'magistrale';

-- 7
SELECT COUNT(*) 
FROM `departments`;

-- 8
SELECT * 
FROM `teachers` 
WHERE `phone` IS NULL;

-- 9
INSERT INTO `students`(degree_id, name, surname, date_of_birth, fiscal_code, enrolment_date, registration_number,email) 
VALUES (20, 'Dordo', 'Dekanovic', '1998-04-11', '124124124', '2016-02-20', '23', 'df@gmail.it');

-- 10 
UPDATE `teachers` 
SET office_number = 300 
WHERE name = 'Pietro' 
AND surname = 'Rizzo';