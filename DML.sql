use studing

select * from Employee

insert into Employee 
values(5,'Amr','Nabih',3000,'M','08-23-2003',null,null)


insert into Employee (Salary,BirthDate,FirstName,LastName,Gender)
values(5000,'02-15-2004','Amir','Tamer','M')

INSERT INTO Employee (FirstName, LastName, Salary, Gender, BirthDate, SuperSSN, DeptNum)
VALUES 
('Amr',     'Nabih',     4500.00, 'M', '2000-08-23', 3, NULL),
('Ali',     'Hassan',    5000.00, 'M', '1999-05-14', NULL, NULL),
('Aya',     'Lotfy',     4800.00, 'F', '2001-11-03', 3, NULL),
('Mona',    'Adel',      5200.00, 'F', '1998-02-25', 4, NULL),
('Omar',    'Fahmy',     4700.00, 'M', '2000-01-10', 4, NULL),
('Sara',    'Mahmoud',   5300.00, 'F', '2002-07-19', NULL, NULL),
('Mostafa', 'Amin',      4600.00, 'M', '2001-03-08', 3, NULL),
('Lamia',   'Ibrahim',   4900.00, 'F', '2000-12-12', NULL, NULL),
('Tamer',   'Hany',      5100.00, 'M', '1999-09-01', 4, NULL),
('Reem',    'Tamer',     4400.00, 'F', '2003-04-30', NULL, NULL);


update Employee 
Set Salary += 200 
Where Salary < 5000 AND Gender = 'M'


update Employee
Set SuperSSN = 3
Where SuperSSN =4

Delete From Employee 
Where SSN = 4 OR SSN = 6
