--aaaaaaaaaaaaaaaaaaaa
SELECT student_id, mark
FROM marks

--bbbbbbbbbbbbbbbbbbbb
SELECT DISTINCT subjects_id FROM marks

--cccccccccccccccccccc
SELECT student_id, mark
FROM marks
GROUP BY
    student_id,
    mark
HAVING
    mark >= 80

--ddddddddddddddddddddd
SELECT student_id, SUM(mark) AS summary
FROM marks
GROUP BY student_id

--eeeeeeeeeeeeeeeeeeeee
SELECT student_id, mark
FROM marks
ORDER BY mark ASC

--fffffffffffffffffffff
SELECT student_id, AVG(mark) AS average
FROM marks
GROUP BY student_id

--ggggggggggggggggggggg
-- Сумма оценок по каждому студенту
SELECT 
    s.id,
    s.name + ' ' + s.last_name AS student_name,
    SUM(m.mark) AS total_marks_sum
FROM 
    students s
JOIN 
    marks m ON s.id = m.student_id
GROUP BY 
    s.id, s.name, s.last_name
ORDER BY 
    s.id;

-- Выбор оценок в диапазоне от 80 до 90
SELECT 
    s.name + ' ' + s.last_name AS student_name,
    subj.name AS subject_name,
    m.mark,
    m.date
FROM 
    marks m
JOIN 
    students s ON m.student_id = s.id
JOIN 
    subjects subj ON m.subjects_id = subj.id
WHERE 
    m.mark BETWEEN 80 AND 90
ORDER BY 
    m.mark DESC;

--hhhhhhhhhhhhhhhhhhhhh
SELECT *
FROM (
SELECT student_id, AVG(mark) AS average
FROM marks
GROUP BY student_id) A
WHERE student_id = 2

--iiiiiiiiiiiiiiiiiiiii
SELECT 
    s.name AS student_first_name,
    s.last_name AS student_last_name,
    (SELECT AVG(mark) FROM marks WHERE student_id = s.id) AS average_mark
FROM 
    students s
ORDER BY 
    s.name DESC,          -- по убыванию по первому полю (имя)
    s.last_name ASC,      -- по возрастанию по второму полю (фамилия)
    average_mark DESC;    -- по убыванию по третьему полю (средний балл)

--jjjjjjjjjjjjjjjjjjjjj
SELECT last_name
FROM students
WHERE last_name LIKE '_a%'

--kkkkkkkkkkkkkkkkkkkkk
SELECT 
    s.id,
    s.name + ' ' + s.last_name AS full_name,
    d.name AS department,
    (SELECT AVG(mark) FROM marks WHERE student_id = s.id) AS average_mark,
    '2023/2024 Academic Year' AS academic_year  -- Константное поле для всех записей
FROM 
    students s
JOIN 
    department d ON s.department_id = d.id
WHERE 
    (SELECT COUNT(*) FROM marks WHERE student_id = s.id) >= 3  -- Условие отбора
    AND (SELECT AVG(mark) FROM marks WHERE student_id = s.id) > 75
ORDER BY 
    average_mark DESC;  -- Сортировка по убыванию среднего балла

--lllllllllllllllllllll
SELECT 
    name + ' ' + last_name as full_name,
    (SELECT MAX(mark) FROM marks WHERE students.id = student_id) AS max_mark
FROM students
 
--mmmmmmmmmmmmmmmmmmmmm
SELECT * 
FROM marks m 
INNER JOIN students s ON s.id = m.student_id
WHERE mark > 85 AND mark < 90 OR subjects_id = 3