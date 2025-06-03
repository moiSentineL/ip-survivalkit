
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
(1, 'Saanvi', 10, 'A', 89, 'Female', '2005-05-04', '2018-11-06'),
(2, 'Aditya', 11, 'A', 69, 'Male', '2005-07-30', '2021-07-30'),
(3, 'Ishaan', 11, 'B', 58, 'Male', '2006-05-02', '2018-06-20'),
(4, 'Aarav', 12, 'A', 58, 'Male', '2006-09-27', '2021-06-19'),
(5, 'Aarav', 12, 'C', 94, 'Female', '2005-05-13', '2021-03-17'),
(6, 'Aarav', 9, 'B', 50, 'Female', '2005-11-04', '2020-01-25'),
(7, 'Ishaan', 11, 'B', 58, 'Female', '2008-01-17', '2021-04-09'),
(8, 'Ananya', 11, 'B', 56, 'Female', '2005-05-27', '2021-06-16'),
(9, 'Aanya', 12, 'C', 65, 'Male', '2008-05-06', '2018-04-21'),
(10, 'Aryan', 9, 'B', 49, 'Female', '2005-10-29', '2018-11-09'),
(11, 'Ananya', 11, 'A', 65, 'Female', '2008-03-08', '2020-02-02'),
(12, 'Saanvi', 9, 'C', 67, 'Male', '2005-12-12', '2020-09-01'),
(13, 'Aanya', 9, 'C', 66, 'Female', '2007-10-25', '2021-12-15'),
(14, 'Aryan', 11, 'A', 57, 'Female', '2008-09-26', '2020-08-25'),
(15, 'Diya', 9, 'B', 87, 'Female', '2007-01-31', '2020-08-23');

-- Teachers Table
CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    joining_date DATE,
    salary INT
);

INSERT INTO teachers VALUES
(1, 'Myra', 'Math', '2015-11-30', 54401),
(2, 'Ananya', 'Science', '2017-02-07', 58308),
(3, 'Aanya', 'English', '2018-12-21', 46100),
(4, 'Aditya', 'History', '2016-11-30', 50276),
(5, 'Myra', 'Computer', '2018-09-11', 61807);

-- Class_Subjects Table
CREATE TABLE class_subjects (
    class INT,
    section CHAR(1),
    subject VARCHAR(50),
    teacher_id INT
);

INSERT INTO class_subjects VALUES
(11, 'B', 'Math', 2),
(11, 'B', 'English', 5),
(9, 'B', 'Math', 2),
(11, 'C', 'Computer', 1),
(12, 'B', 'English', 2),
(9, 'C', 'History', 2),
(9, 'A', 'Computer', 3),
(12, 'A', 'History', 2),
(11, 'A', 'History', 5),
(12, 'C', 'English', 5);

-- Logs Table
CREATE TABLE logs (
    log_id INT,
    user_id INT,
    activity VARCHAR(100),
    log_time DATETIME
);

INSERT INTO logs VALUES
(1, 5, 'activity_4', '2023-01-08 00:00:00'),
(2, 11, 'activity_2', '2023-09-19 00:00:00'),
(3, 1, 'activity_4', '2023-05-13 00:00:00'),
(4, 6, 'activity_2', '2023-10-02 00:00:00'),
(5, 10, 'activity_1', '2023-04-17 00:00:00'),
(6, 1, 'activity_4', '2023-11-17 00:00:00'),
(7, 13, 'activity_4', '2023-08-30 00:00:00'),
(8, 7, 'activity_1', '2023-04-02 00:00:00'),
(9, 2, 'activity_3', '2023-05-30 00:00:00'),
(10, 5, 'activity_5', '2023-06-28 00:00:00'),
(11, 7, 'activity_2', '2023-09-29 00:00:00'),
(12, 2, 'activity_2', '2023-08-19 00:00:00'),
(13, 9, 'activity_2', '2023-08-27 00:00:00'),
(14, 9, 'activity_3', '2023-05-01 00:00:00'),
(15, 2, 'activity_1', '2023-11-10 00:00:00'),
(16, 15, 'activity_5', '2023-11-06 00:00:00'),
(17, 2, 'activity_1', '2023-02-14 00:00:00'),
(18, 12, 'activity_4', '2023-11-07 00:00:00'),
(19, 6, 'activity_4', '2023-06-05 00:00:00'),
(20, 3, 'activity_4', '2023-12-18 00:00:00');
