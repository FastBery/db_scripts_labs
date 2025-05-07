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


--jjjjjjjjjjjjjjjjjjjjj
SELECT last_name
FROM students
WHERE last_name LIKE '_a%'