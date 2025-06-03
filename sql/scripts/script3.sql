-- 1. Students table
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    gender TEXT,
    age INTEGER
);

INSERT INTO students VALUES 
(1, 'Aditi', 'F', 17),
(2, 'Rohan', 'M', 18),
(3, 'Neha', 'F', 17),
(4, 'Arjun', 'M', 19);

-- 2. Subjects table
CREATE TABLE subjects (
    subject_id INTEGER PRIMARY KEY,
    subject_name TEXT,
    teacher_id INTEGER
);

INSERT INTO subjects VALUES 
(101, 'Mathematics', 1001),
(102, 'Physics', 1002),
(103, 'English', 1003);

-- 3. Teachers table
CREATE TABLE teachers (
    teacher_id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT
);

INSERT INTO teachers VALUES 
(1001, 'Mr. Iyer', 'Science'),
(1002, 'Ms. Sharma', 'Science'),
(1003, 'Mrs. Dutta', 'Arts');

-- 4. Enrollments table (many-to-many between students and subjects)
CREATE TABLE enrollments (
    student_id INTEGER,
    subject_id INTEGER,
    marks INTEGER,
    PRIMARY KEY (student_id, subject_id)
);

INSERT INTO enrollments VALUES 
(1, 101, 95),
(1, 102, 87),
(2, 101, 76),
(2, 103, 89),
(3, 101, 84),
(3, 102, 91),
(3, 103, 78),
(4, 102, 65);

