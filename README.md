
# 📘 SQL Learning Guide (Structured Query Language)

A comprehensive learning resource to help you master SQL using Microsoft SQL Server. It includes commands, syntax explanations, and practical examples — with bilingual comments in English and Arabic.

---

## 📂 Topics Covered

### ✅ SQL Basics
- Single-line (`--`) and multi-line (`/* ... */`) comments
- Data Types:
  - Numeric: `int`, `float`, `money`, etc.
  - String: `char`, `varchar`, `nvarchar`
  - DateTime: `date`, `time`, `datetime`
  - Binary: `binary`, `image` (deprecated)
  - Others: `xml`, `sql_variant`

---

### 🏗️ DDL – Data Definition Language

```sql
CREATE DATABASE CompanyCycle9;
USE CompanyCycle9;

CREATE TABLE Employee (
    SSN INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(15) NOT NULL,
    Address VARCHAR(50) DEFAULT 'Cairo',
    Salary MONEY,
    Date DATE,
    Gender CHAR(1),
    LName VARCHAR(15),
    SuperSSN INT REFERENCES Employee(SSN),
    DNo INT
);
```

- `ALTER TABLE`, `DROP TABLE` supported
- Identity, Foreign Key, and NOT NULL constraints explained

---

### 🧾 DML – Data Manipulation Language

```sql
INSERT INTO Employee (Name, LName, Date, Address, Gender, DNo, SuperSSN, Salary)
VALUES ('Amr', 'Nabih', '2003-23-08', 'Mansoura', 'M', 8, NULL, NULL);

UPDATE Employee
SET Address = 'Dokki'
WHERE SSN = 1;

DELETE FROM Employee
WHERE SSN = 9;
```

- Examples for inserting single and multiple rows
- Conditional updates and deletions

---

### 🔍 DQL – Data Query Language

```sql
SELECT * FROM Student;

SELECT St_name + ' ' + St_Lname AS FullName
FROM Student;

SELECT * FROM Student
WHERE St_age BETWEEN 20 AND 25;

SELECT * FROM Student
WHERE St_address IN ('Cairo', 'Giza');
```

- `WHERE`, `BETWEEN`, `IN`, `LIKE`, `IS NULL`
- Sorting with `ORDER BY`, `DISTINCT`

---

### 🔗 JOINS

```sql
-- INNER JOIN
SELECT S.St_name, D.Dept_Name
FROM Student S
INNER JOIN Department D ON D.Dept_Id = S.Dept_Id;

-- LEFT OUTER JOIN
SELECT S.St_name, D.Dept_Name
FROM Student S
LEFT OUTER JOIN Department D ON D.Dept_Id = S.Dept_Id;
```

- All join types: `INNER`, `LEFT`, `RIGHT`, `FULL`, `SELF`

---

### 🧠 Subqueries

```sql
SELECT * FROM Student
WHERE St_age > (SELECT AVG(St_age) FROM Student);
```

- Subqueries in `WHERE`, `IN`, and `DELETE` statements
- Rewriting joins with subqueries

---

### 📊 Functions

#### Aggregate:
```sql
SELECT COUNT(*), SUM(Salary), AVG(Salary)
FROM Instructor;
```

#### String:
```sql
SELECT LOWER(St_name), UPPER(St_Lname)
FROM Student;
```

#### DateTime:
```sql
SELECT FORMAT(GETDATE(), 'dd-MM-yyyy');
SELECT EOMONTH(GETDATE());
```

#### Null-handling:
```sql
SELECT ISNULL(St_address, 'No Address') FROM Student;
SELECT COALESCE(St_name, St_Lname, 'Unknown') FROM Student;
```

#### Ranking:
```sql
SELECT Ins_Name, Salary,
    ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RNum,
    RANK() OVER (ORDER BY Salary DESC) AS Rnk,
    DENSE_RANK() OVER (ORDER BY Salary DESC) AS DRnk
FROM Instructor;
```

---

## 💡 Notes

- All commands tested on Microsoft SQL Server
- Bilingual comments and examples included (English + Arabic)
- Useful for both class notes and revision

---

## 📌 How to Use

1. Open SQL Server Management Studio (SSMS)
2. Copy each code block and run it interactively
3. Modify and explore results for better understanding
