-- CREATE TABLE subjects
-- (
--     id INT UNIQUE,
--     name VARCHAR NOT NULL,
--     teacher_id INT NOT NULL,

-- )

-- CREATE TABLE marks
-- (
--     id INT UNIQUE,
--     student_id INT NOT NULL,
--     subject_id INT NOT NULL,

-- )

-- CREATE TABLE students
-- (
--     id INT UNIQUE,
--     name VARCHAR(20) NOT NULL,
--     last_name VARCHAR(30) NOT NULL,
--     department_id INT NOT NULL

-- )

-- CREATE TABLE teachers
-- (
--     id INT UNIQUE,
--     name VARCHAR(20) NOT NULL,
--     last_name VARCHAR(20) NOT NULL,
--     department_id INT NOT NULL
-- )

-- CREATE TABLE department
-- (
--     id INT UNIQUE,
--     name VARCHAR(20) NOT NULL
-- )

CREATE TABLE department
(
    id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL
)

CREATE TABLE teachers
(
    id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(id)
)

CREATE TABLE students
(
    id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(id)
)

CREATE TABLE subjects
(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    teacher_id INT NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
)

CREATE TABLE marks
(
    id INT PRIMARY KEY,
    student_id INT NOT NULL,
    subjects_id INT NOT NULL,
    mark INT NOT NULL, -- Добавил поле для оценки
    date DATE NOT NULL, -- Добавил поле для даты оценки
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (subjects_id) REFERENCES subjects(id)
)