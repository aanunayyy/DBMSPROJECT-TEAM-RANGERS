## SQL QUERIES

---

### 01. List all records from Student  
Query
```sql
SELECT * FROM Student;
```

---

### 02. List students enrolled in the year 2022  
Query
```sql
SELECT * FROM Student
WHERE Enrollment_Year = 2022;
```

---

### 03. List all students in ascending order of their names  
Query
```sql
SELECT * FROM Student
ORDER BY Name ASC;
```

---

### 04. Display top 5 highest marks from Result  
Query
```sql
SELECT * FROM Result
ORDER BY Marks DESC
LIMIT 5;
```

---

### 05. Count total number of students  
Query
```sql
SELECT COUNT(*) AS Total_Students
FROM Student;
```

---

### 06. Calculate total marks from Result  
Query
```sql
SELECT SUM(Marks) AS Total_Marks
FROM Result;
```

---

### 07. Find average marks from Result  
Query
```sql
SELECT AVG(Marks) AS Average_Marks
FROM Result;
```

---

### 08. Find highest marks from Result  
Query
```sql
SELECT MAX(Marks) AS Highest_Marks
FROM Result;
```

---

### 09. Count students grouped by enrollment year  
Query
```sql
SELECT Enrollment_Year, COUNT(*) AS Total_Students
FROM Student
GROUP BY Enrollment_Year;
```

---

### 10. Count students by enrollment year having more than 3 students  
Query
```sql
SELECT Enrollment_Year, COUNT(*) AS Total_Students
FROM Student
GROUP BY Enrollment_Year
HAVING COUNT(*) > 3;
```

---

### 11. List distinct enrollment years  
Query
```sql
SELECT DISTINCT Enrollment_Year
FROM Student;
```

---

### 12. Find students whose names start with 'A'  
Query
```sql
SELECT * FROM Student
WHERE Name LIKE 'A%';
```

---

### 13. Find students enrolled in year 2021 or 2023  
Query
```sql
SELECT * FROM Student
WHERE Enrollment_Year IN (2021, 2023);
```


### 14. Display student name, subject name, and marks using joins  
Query
```sql
SELECT Student.Name, Subject.Subject_Name, Result.Marks
FROM Result
INNER JOIN Student
ON Result.Student_ID = Student.Student_ID
INNER JOIN Subject
ON Result.Subject_ID = Subject.Subject_ID;
```

---

### 15. Display names and marks of students who passed  
Query
```sql
SELECT Student.Name, Result.Marks, Result.Status
FROM Student
INNER JOIN Result
ON Student.Student_ID = Result.Student_ID
WHERE Result.Status = 'Pass';
```
