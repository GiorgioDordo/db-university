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