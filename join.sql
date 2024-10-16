--  1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students.name` AS 'nome',
`students.surname` AS 'surname',
`degrees.name` AS 'corso_di_laurea'
FROM `students` 
INNER JOIN `degrees`
ON `students.degree_id` = `degrees.id`
WHERE `degrees.name` = 'Corso di Laurea in Economia';

--  2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di
--  Neuroscienze
SELECT degrees.name AS 'course',
departments.name AS 'department', 
degrees.level AS 'level'
FROM `degrees` 
JOIN `departments`
ON degrees.department_id = departments.id
WHERE degrees.level = 'Magistrale'
AND departments.name = 'Dipartimento di Neuroscienze';

--  3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT teachers.name AS 'name',
teachers.surname AS 'surname',
courses.name AS 'corso'
FROM `courses`
JOIN `course_teacher`ON courses.id = course_teacher.course_id
JOIN `teachers` ON course_teacher.teacher_id = teachers.id
WHERE teachers.id = '44';

--  4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui
--  sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e
--  nome
SELECT students.name AS 'name',
students.surname AS 'surname',
degrees.name AS 'laurea',
departments.name AS 'department'
FROM `students`
JOIN `degrees` ON students.degree_id = degrees.id
JOIN `departments` ON degrees.department_id = departments.id
ORDER BY students.name, students.surname;

--  5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT teachers.name AS 'name',
teachers.surname AS 'surname',
courses.name AS 'course',
degrees.name AS 'degree'
FROM `courses`
JOIN `course_teacher` ON courses.id = course_teacher.course_id
JOIN `teachers` ON course_teacher.teacher_id = teachers.id
JOIN `degrees` ON courses.degree_id = degrees.id;

--  6. Selezionare tutti i docenti che insegnano nel Dipartimento di
--  Matematica (54)
SELECT teachers.name AS 'name',
teachers.surname AS 'surname',
departments.name AS 'departments'
FROM `teachers`
JOIN course_teacher ON teachers.id = course_teacher.teacher_id 
JOIN courses ON course_teacher.course_id = courses.id 
JOIN degrees ON courses.degree_id = degrees.id 
JOIN departments ON degrees.department_id = departments.id 
WHERE departments.name = 'Dipartimento di Matematica';

--  7. BONUS: Selezionare per ogni studente il numero di tentativi sostenuti
--  per ogni esame, stampando anche il voto massimo. Successivamente,
--  filtrare i tentativi con voto minimo 18.