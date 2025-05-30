
-- Students Table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    class INT,
    section CHAR(1),
    marks INT,
    gender VARCHAR(10),
    dob DATE,
    admission_date DATE
);

INSERT INTO students VALUES
(1, 'Joshua Lopez', 10, 'C', 69, 'Female', '2007-05-30', '2020-08-28'),
(2, 'Sandra Jones', 10, 'A', 84, 'Male', '2007-09-06', '2020-07-29'),
(3, 'Ms. Elizabeth Gomez MD', 12, 'A', 72, 'Female', '2008-01-10', '2019-01-29'),
(4, 'Richard Chang', 11, 'A', 82, 'Male', '2008-07-04', '2020-10-28'),
(5, 'Jennifer Jones', 11, 'C', 57, 'Female', '2007-05-26', '2020-05-18'),
(6, 'Jennifer Davis', 11, 'A', 78, 'Male', '2005-10-31', '2020-08-09'),
(7, 'Richard Morales', 12, 'C', 93, 'Male', '2007-07-11', '2018-06-12'),
(8, 'Julian Bridges', 9, 'C', 45, 'Male', '2007-03-30', '2018-11-15'),
(9, 'Rebecca Johnson', 12, 'A', 64, 'Male', '2007-12-05', '2018-08-22'),
(10, 'Kevin Douglas', 11, 'B', 70, 'Female', '2008-09-28', '2021-03-29'),
(11, 'Allison Haynes', 9, 'C', 90, 'Female', '2008-04-18', '2021-06-07'),
(12, 'Ashley Jordan', 10, 'B', 100, 'Male', '2005-05-11', '2019-08-13'),
(13, 'James Carpenter', 12, 'C', 100, 'Male', '2008-07-17', '2020-06-22'),
(14, 'Bryan Brown', 11, 'C', 60, 'Female', '2008-06-14', '2021-08-20'),
(15, 'April Ortega', 11, 'A', 96, 'Male', '2005-07-07', '2021-03-08');

-- Teachers Table
CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    joining_date DATE,
    salary INT
);

INSERT INTO teachers VALUES
(1, 'Cynthia Coleman', 'Math', '2015-03-11', 68284),
(2, 'Kim Kim', 'Science', '2017-04-27', 54963),
(3, 'Andrea Lewis', 'English', '2015-08-29', 56987),
(4, 'Tyrone Palmer', 'History', '2019-11-29', 42607),
(5, 'Brandon Davidson', 'Computer', '2016-12-03', 53374);

-- Class_Subjects Table
CREATE TABLE class_subjects (
    class INT,
    section CHAR(1),
    subject VARCHAR(50),
    teacher_id INT
);

INSERT INTO class_subjects VALUES
(12, 'A', 'Computer', 5),
(9, 'B', 'Science', 1),
(12, 'A', 'Science', 4),
(12, 'A', 'English', 4),
(11, 'C', 'History', 2),
(10, 'A', 'Computer', 4),
(9, 'B', 'English', 3),
(9, 'A', 'Science', 2),
(11, 'B', 'Computer', 1),
(9, 'A', 'English', 4);

-- Logs Table
CREATE TABLE logs (
    log_id INT,
    user_id INT,
    activity VARCHAR(100),
    log_time DATETIME
);

INSERT INTO logs VALUES
(1, 6, 'activity_4', '2023-10-25 00:00:00'),
(2, 3, 'activity_2', '2023-04-23 00:00:00'),
(3, 14, 'activity_2', '2023-11-19 00:00:00'),
(4, 15, 'activity_5', '2023-03-04 00:00:00'),
(5, 5, 'activity_5', '2023-09-09 00:00:00'),
(6, 15, 'activity_4', '2023-02-25 00:00:00'),
(7, 7, 'activity_2', '2023-06-12 00:00:00'),
(8, 9, 'activity_2', '2023-06-06 00:00:00'),
(9, 11, 'activity_5', '2023-01-05 00:00:00'),
(10, 13, 'activity_3', '2023-08-09 00:00:00'),
(11, 1, 'activity_5', '2023-03-14 00:00:00'),
(12, 12, 'activity_5', '2023-02-21 00:00:00'),
(13, 13, 'activity_5', '2023-01-23 00:00:00'),
(14, 4, 'activity_4', '2023-03-27 00:00:00'),
(15, 1, 'activity_1', '2023-06-07 00:00:00'),
(16, 10, 'activity_4', '2023-01-20 00:00:00'),
(17, 6, 'activity_3', '2023-03-03 00:00:00'),
(18, 6, 'activity_4', '2023-04-22 00:00:00'),
(19, 12, 'activity_4', '2023-03-10 00:00:00'),
(20, 13, 'activity_4', '2023-01-17 00:00:00');
