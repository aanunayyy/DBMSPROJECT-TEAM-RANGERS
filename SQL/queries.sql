
SELECT * FROM Student;


SELECT * FROM Student
WHERE Enrollment_Year = 2022;


SELECT * FROM Student
ORDER BY Name ASC;


SELECT * FROM Result
ORDER BY Marks DESC
LIMIT 5;


SELECT COUNT(*) AS Total_Students
FROM Student;

SELECT SUM(Marks) AS Total_Marks
FROM Result;


SELECT AVG(Marks) AS Average_Marks
FROM Result;


SELECT MAX(Marks) AS Highest_Marks
FROM Result;

SELECT Enrollment_Year, COUNT(*) AS Total_Students
FROM Student
GROUP BY Enrollment_Year;


SELECT Enrollment_Year, COUNT(*) AS Total_Students
FROM Student
GROUP BY Enrollment_Year
HAVING COUNT(*) > 3;

SELECT DISTINCT Enrollment_Year
FROM Student;

SELECT * FROM Student
WHERE Name LIKE 'A%';

SELECT * FROM Student
WHERE Enrollment_Year IN (2021, 2023);


SELECT Student.Name, Subject.Subject_Name, Result.Marks
FROM Result
INNER JOIN Student
ON Result.Student_ID = Student.Student_ID
INNER JOIN Subject
ON Result.Subject_ID = Subject.Subject_ID;


SELECT Student.Name, Result.Marks, Result.Status
FROM Student
INNER JOIN Result
ON Student.Student_ID = Result.Student_ID
WHERE Result.Status = 'Pass';
