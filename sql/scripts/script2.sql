-- STUDENTS table
CREATE TABLE students_new (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    class INTEGER,
    gender TEXT,
    marks INTEGER
);

-- SUBJECTS table
CREATE TABLE subjects (
    subject_id INTEGER PRIMARY KEY,
    subject_name TEXT
);

-- ENROLLMENTS table
CREATE TABLE enrollments (
    student_id INTEGER,
    subject_id INTEGER,
    marks INTEGER,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

-- students
INSERT INTO students_new VALUES 
(1, ' Alice ', 12, 'F', 91),
(2, 'Bob', 12, 'M', 85),
(3, ' Charlie ', 11, 'M', 78),
(4, 'Diana', 11, 'F', NULL),
(5, 'Eve', 12, 'F', 95);

-- subjects
INSERT INTO subjects VALUES
(101, 'Math'),
(102, 'English'),
(103, 'Computer');

-- enrollments
INSERT INTO enrollments VALUES
(1, 101, 91),
(1, 102, 89),
(2, 101, 85),
(2, 103, 77),
(3, 101, NULL),
(4, 102, 90),
(5, 103, 95);

