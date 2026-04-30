CREATE DATABASE Online_exam_system_normalized;
USE Online_exam_system_normalized;

-- STUDENT TABLE
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    Enrollment_Year INT
);

-- INSTRUCTOR TABLE
CREATE TABLE Instructor (
    Instructor_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Contact_Number VARCHAR(15)
);

-- DEPARTMENT TABLE (NEW - normalization)
CREATE TABLE Department (
    Department_ID INT PRIMARY KEY AUTO_INCREMENT,
    Department_Name VARCHAR(100) UNIQUE NOT NULL
);

-- LINK Instructor → Department
ALTER TABLE Instructor
ADD Department_ID INT,
ADD FOREIGN KEY (Department_ID)
REFERENCES Department(Department_ID)
ON DELETE SET NULL
ON UPDATE CASCADE;

-- SUBJECT TABLE
CREATE TABLE Subject (
    Subject_ID INT PRIMARY KEY AUTO_INCREMENT,
    Subject_Name VARCHAR(100) NOT NULL,
    Subject_Code VARCHAR(20) UNIQUE NOT NULL,
    Credits INT,
    Max_Marks INT
);

-- LINK Instructor → Subject (NEW M:N relationship handled)
CREATE TABLE Instructor_Subject (
    Instructor_ID INT,
    Subject_ID INT,
    PRIMARY KEY (Instructor_ID, Subject_ID),
    FOREIGN KEY (Instructor_ID) REFERENCES Instructor(Instructor_ID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Subject_ID) REFERENCES Subject(Subject_ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- EXAM TABLE
CREATE TABLE Exam (
    Exam_ID INT PRIMARY KEY AUTO_INCREMENT,
    Exam_Name VARCHAR(100) NOT NULL,
    Exam_Date DATE,
    Duration INT,
    Subject_ID INT,
    FOREIGN KEY (Subject_ID)
        REFERENCES Subject(Subject_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- RESULT TABLE (Improved - remove redundancy)
CREATE TABLE Result (
    Result_ID INT PRIMARY KEY AUTO_INCREMENT,
    Student_ID INT,
    Exam_ID INT,
    Marks INT,
    Status VARCHAR(20),

    FOREIGN KEY (Student_ID)
        REFERENCES Student(Student_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (Exam_ID)
        REFERENCES Exam(Exam_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
