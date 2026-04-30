-- =========================
-- DEPARTMENT DATA
-- =========================
INSERT INTO Department (Department_Name) VALUES
('Computer Science'),
('Information Technology'),
('Electronics'),
('Mathematics'),
('Physics'),
('Mechanical'),
('Chemistry'),
('Civil');

-- =========================
-- STUDENT DATA
-- =========================
INSERT INTO Student (Name, Email, Phone, Enrollment_Year) VALUES
('Aman Sharma', 'aman.sharma@gmail.com', '9876543210', 2022),
('Riya Verma', 'riya.verma@gmail.com', '9876543211', 2023),
('Karan Mehta', 'karan.mehta@gmail.com', '9876543212', 2021),
('Sneha Gupta', 'sneha.gupta@gmail.com', '9876543213', 2022),
('Arjun Singh', 'arjun.singh@gmail.com', '9876543214', 2023),
('Pooja Yadav', 'pooja.yadav@gmail.com', '9876543215', 2021),
('Rahul Kumar', 'rahul.kumar@gmail.com', '9876543216', 2022),
('Neha Kapoor', 'neha.kapoor@gmail.com', '9876543217', 2023),
('Vikas Jain', 'vikas.jain@gmail.com', '9876543218', 2021),
('Anjali Mishra', 'anjali.mishra@gmail.com', '9876543219', 2022);

-- =========================
-- INSTRUCTOR DATA
-- =========================
INSERT INTO Instructor (Name, Email, Contact_Number, Department_ID) VALUES
('Dr. Rajesh Kumar', 'rajesh.kumar@gmail.com', '9123456780', 1),
('Dr. Neha Sharma', 'neha.sharma@gmail.com', '9123456781', 2),
('Prof. Amit Verma', 'amit.verma@gmail.com', '9123456782', 3),
('Dr. Priya Singh', 'priya.singh@gmail.com', '9123456783', 4),
('Prof. Anil Gupta', 'anil.gupta@gmail.com', '9123456784', 5),
('Dr. Kavita Mehta', 'kavita.mehta@gmail.com', '9123456785', 1),
('Prof. Rohit Jain', 'rohit.jain@gmail.com', '9123456786', 6),
('Dr. Sunita Yadav', 'sunita.yadav@gmail.com', '9123456787', 7),
('Prof. Deepak Mishra', 'deepak.mishra@gmail.com', '9123456788', 8),
('Dr. Anjali Kapoor', 'anjali.kapoor@gmail.com', '9123456789', 2);

-- =========================
-- SUBJECT DATA
-- =========================
INSERT INTO Subject (Subject_Name, Subject_Code, Credits, Max_Marks) VALUES
('Data Structures', 'CS101', 4, 100),
('Database Management Systems', 'CS102', 4, 100),
('Operating Systems', 'CS103', 4, 100),
('Computer Networks', 'CS104', 4, 100),
('Software Engineering', 'CS105', 3, 100),
('Discrete Mathematics', 'MA101', 3, 100),
('Digital Electronics', 'EC101', 3, 100),
('Artificial Intelligence', 'CS106', 4, 100),
('Machine Learning', 'CS107', 4, 100),
('Cyber Security', 'CS108', 3, 100);

-- =========================
-- INSTRUCTOR - SUBJECT MAPPING
-- =========================
INSERT INTO Instructor_Subject (Instructor_ID, Subject_ID) VALUES
(1,1),
(1,2),
(2,3),
(2,4),
(3,7),
(4,6),
(5,4),
(6,8),
(7,7),
(8,10),
(9,5),
(10,9);

-- =========================
-- EXAM DATA
-- =========================
INSERT INTO Exam (Exam_Name, Exam_Date, Duration, Subject_ID) VALUES
('DS Mid Term', '2026-04-10', 90, 1),
('DBMS Mid Term', '2026-04-12', 90, 2),
('OS Mid Term', '2026-04-14', 90, 3),
('CN Mid Term', '2026-04-16', 90, 4),
('SE Mid Term', '2026-04-18', 60, 5),
('Maths Mid Term', '2026-04-20', 60, 6),
('DE Mid Term', '2026-04-22', 60, 7),
('AI Mid Term', '2026-04-24', 90, 8),
('ML Mid Term', '2026-04-26', 90, 9),
('Cyber Security Mid Term', '2026-04-28', 60, 10);

-- =========================
-- RESULT DATA (UPDATED)
-- =========================
INSERT INTO Result (Student_ID, Exam_ID, Marks, Status) VALUES
(1,1,85,'Pass'),
(2,2,78,'Pass'),
(3,3,45,'Fail'),
(4,4,67,'Pass'),
(5,5,55,'Pass'),
(6,6,32,'Fail'),
(7,7,88,'Pass'),
(8,8,91,'Pass'),
(9,9,73,'Pass'),
(10,10,60,'Pass');
