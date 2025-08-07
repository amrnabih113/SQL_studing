use studing

select * from Employee

select * from Employee 
where FirstName = 'Amr'

Select FirstName +' ' + LastName AS FullName
From Employee
Where BirthDate < '1-1-2005'

Select * from Employee 
Where Salary Between 3200 AND 5000

select * from Employee 
Where SuperSSN IS NOT NULL

Select * From Employee 
WHERE DeptNum IS NULL

SELECT * FROM Employee 
WHERE FirstName Like '[amn]%' --starts with a or m or n


SELECT * FROM Employee 
WHERE FirstName Like '[^amn]%' --doesn't start with a or m or n

SELECT * FROM Employee
WHERE FirstName LIKE '%a%' -- the name has a letter a

select distinct LastName
from Employee

select * from Employee
Order By FirstName ASC

Insert into Employee 
values('Tamer','Mohamed',3400,'M',null, null, null)

select * from Employee
Order By FirstName DESC,LastName DESC 

select * from Employee
Order By FirstName DESC,LastName
