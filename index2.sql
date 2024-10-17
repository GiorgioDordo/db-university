-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`) AS 'anno',
COUNT(*) AS 'iscritti'
FROM `students`
GROUP BY YEAR(`enrolment_date`)  
ORDER BY `iscritti` ASC

--  2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT (`office_address`) AS 'address',
COUNT(id) AS 'teachers'
FROM `teachers`
GROUP BY `address`
ORDER BY `teachers`;

--  3. Calcolare la media dei voti di ogni appello d'esame
SELECT (`exam_id`) AS 'exam',
AVG (`vote`) AS 'degree'
FROM `exam_student` 
GROUP BY `exam`
ORDER BY `exam`;

--  4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id` AS 'departments',
COUNT(id) AS 'courses'
FROM `degrees`
GROUP BY `departments`  
ORDER BY `departments` ASC