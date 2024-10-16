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