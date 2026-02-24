CREATE DATABASE Online_exam_system;
USE Online_exam_system;
-- Student Table
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    Enrollment_Year INT
    );
-- Instructor Table
CREATE TABLE Instructor (
    Instructor_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Department VARCHAR(100),
    Contact_Number VARCHAR(15)
);
-- Subject Table
CREATE TABLE Subject (
    Subject_ID INT PRIMARY KEY AUTO_INCREMENT,
    Subject_Name VARCHAR(100) NOT NULL,
    Subject_Code VARCHAR(20) UNIQUE NOT NULL,
    Credits INT,
    Max_Marks INT
);
-- Exam Table
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
-- Result Table
CREATE TABLE Result (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Subject_ID INT,
    Marks INT,
    Status VARCHAR(20),
    Student_ID INT,
    
    FOREIGN KEY (Subject_ID)
        REFERENCES Subject(Subject_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
        
    FOREIGN KEY (Student_ID)
        REFERENCES Student(Student_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


