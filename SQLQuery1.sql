create database phase3practiceproj1Db
use phase3practiceproj1Db


create table Classes (
ClassId int primary key ,
ClassName nvarchar(50)
)

create table Subjects (
SubjectId int primary key ,
SubjectName nvarchar(50),
TeacherName nvarchar(50)
)

create table Student(
StudentName nvarchar(50),
StudentRollNo int primary key,
ClassId int foreign key references Classes(ClassId),
SubjectId int foreign key references Subjects(SubjectId)
)

insert into Classes(ClassId,ClassName) values (1,'section1')
insert into Classes values (2,'section2')
insert into Classes(ClassId,ClassName) values (3,'section3')
insert into Classes(ClassId,ClassName) values (4,'section4')

select * from Classes

insert into Subjects values (4,'physics','Suresh')
insert into Subjects values (1,'English','Rakesh')
insert into Subjects values (3,'maths','Sandya')
insert into Subjects(SubjectId,SubjectName,TeacherName) values (5,'Science','Bhanu')
insert into Subjects(SubjectId,SubjectName,TeacherName) values (2,'Social','Ramya')

select * from Subjects

insert into Student values ('Rahul',100,2,4)
insert into Student values ('Rohit',102,3,1)
insert into Student values ('Surya',101,1,3)
insert into Student values ('Bumrah',104,4,2)
insert into Student values ('Tilak',105,3,1)

select * from Student