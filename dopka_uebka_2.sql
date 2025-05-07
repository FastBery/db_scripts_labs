-- Заполнение department
INSERT INTO department (id, name) VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Physics'),
(4, 'Chemistry'),
(5, 'Biology');

-- Заполнение teachers
INSERT INTO teachers (id, name, last_name, department_id) VALUES
(1, 'John', 'Smith', 1),
(2, 'Emily', 'Johnson', 2),
(3, 'Michael', 'Williams', 1),
(4, 'Sarah', 'Brown', 3),
(5, 'David', 'Jones', 4);

-- Заполнение students
INSERT INTO students (id, name, last_name, department_id) VALUES
(1, 'Alice', 'Anderson', 1),
(2, 'Bob', 'Baker', 1),
(3, 'Charlie', 'Clark', 2),
(4, 'Diana', 'Davis', 3),
(5, 'Edward', 'Evans', 4),
(6, 'Fiona', 'Fisher', 1),
(7, 'George', 'Green', 2),
(8, 'Hannah', 'Harris', 3),
(9, 'Ian', 'Irwin', 1),
(10, 'Julia', 'Jackson', 5);

-- Заполнение subject
INSERT INTO subjects (id, name, teacher_id) VALUES
(1, 'Database Systems', 1),
(2, 'Algorithms', 3),
(3, 'Calculus', 2),
(4, 'Quantum Mechanics', 4),
(5, 'Organic Chemistry', 5);

-- Заполнение marks
INSERT INTO marks (id, student_id, subjects_id, mark, date) VALUES
(1, 1, 1, 85, '2023-01-15'),
(2, 1, 2, 78, '2023-01-16'),
(3, 2, 1, 92, '2023-01-15'),
(4, 2, 2, 88, '2023-01-16'),
(5, 3, 3, 76, '2023-01-17'),
(6, 4, 4, 91, '2023-01-18'),
(7, 5, 5, 84, '2023-01-19'),
(8, 6, 1, 79, '2023-01-15'),
(9, 6, 2, 82, '2023-01-16'),
(10, 7, 3, 87, '2023-01-17'),
(11, 8, 4, 93, '2023-01-18'),
(12, 9, 1, 80, '2023-01-15'),
(13, 9, 2, 85, '2023-01-16'),
(14, 10, 5, 89, '2023-01-19'),
(15, 1, 3, 77, '2023-02-20'),
(16, 2, 3, 83, '2023-02-20'),
(17, 3, 1, 75, '2023-02-21'),
(18, 4, 2, 90, '2023-02-22'),
(19, 5, 4, 86, '2023-02-23'),
(20, 7, 1, 94, '2023-02-21');