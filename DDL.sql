create database studing

use studing

Create Table Employee
(	SSN int primary key identity(1,1),
	FirstName varchar(10)not null ,
	LastName Varchar(10) ,
	Salary money not null,
	Gender Char(1) ,
	BirthDate Date , 
	SuperSSN int references Employee(SSN),
);

Create Table Department
(	Dnum int primary key identity(1,1),
	Dname varchar(20),
	ManagerID int references Employee(SSN),
	ManegerHireDate Date,
);

Create Table Locations
(	Dnum int references  Department(Dnum),
	loc varchar(25) not null,
	Primary Key(Dnum, loc),
);

Alter Table Employee
Add DeptNum int references Department(Dnum)

Create Table Dependent (
	Name varchar(15) not null,
	BD Date,
	Gender Char(1),
	EmpSSN int references Employee(SSN),
	Primary Key(Name, EmpSSN),
);


Create Table Project(
	Pnum int primary key identity(1,1),
	Pname varchar(20) ,
	City varchar(10) default 'Cairo',
	Location varchar(25) ,
	Dno int references Department(Dnum),
);

Create Table WorkFor(
	ProjectNum int references Project(Pnum),
	EmpSSN int references Employee(SSN),
	Hours int ,
	Primary key(ProjectNum, EmpSSN),
);

