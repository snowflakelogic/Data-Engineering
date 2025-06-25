CREATE DATABASE school;
USE school;
CREATE TABLE studentdetails(id int not null,fname varchar(20),lname varchar(20),age int not null);
desc studentdetails;
show tables;
select * from studentdetails;
ALTER TABLE studentdetails
modify column student_id INT primary key;
CREATE table DEPARTMENT ( dept_id int primary key, 
deptname text not null, studentid int, 
foreign key(studentid) references studentdetails(student_id));
insert into studentdetails values(3,'jessi','k',43),(4,'jame','k',65),
			   (5,'ash','k',65),(6,'brock','k',65),(7,'misty','k',65);
INSERT INTO DEPARTMENT values(1,'AI-DS','1');
INSERT INTO DEPARTMENT values(3,'AI-DS','1');
INSERT INTO DEPARTMENT values(2,'COMP',1);
INSERT INTO DEPARTMENT values(4,'IT','2');
INSERT INTO DEPARTMENT values(5,'AI-DS','3');
INSERT INTO DEPARTMENT values(6,'AI-DS','4');
SELECT * FROM DEPARTMENT;
DELETE FROM DEPARTMENT WHERE studentid = 1 AND deptname = 'AI-DS';
SELECT * FROM DEPARTMENT;
INSERT INTO DEPARTMENT values(1,'AI-DS','1');
#INNER JOIN
SELECT *
FROM studentdetails 
JOIN department 
ON studentdetails.student_id = department.studentid;

#LEFT OUTER JOIN
SELECT *
FROM studentdetails 
LEFT JOIN department 
ON studentdetails.student_id = department.studentid;

#RIGHT OUTER JOIN
SELECT *
FROM studentdetails 
RIGHT JOIN department 
ON studentdetails.student_id = department.studentid;

#FULLER OUTER JOIN
SELECT *
FROM studentdetails 
LEFT JOIN department 
ON studentdetails.student_id = department.studentid
UNION 
SELECT *
FROM studentdetails 
RIGHT JOIN department 
ON studentdetails.student_id = department.studentid;

CREATE TABLE student(id int PRIMARY KEY,fname varchar(20),lname varchar(20),age int not null);
insert into student values(3,'jessi','k',43),(4,'jame','k',65),
			   (5,'ash','k',65),(6,'brock','k',65),(7,'misty','k',65);
               
CREATE table DEPT ( dept_id int NOT NULL, 
deptname text not null, id int, 
foreign key(id) references student(id));

INSERT INTO DEPT values(1,'AI-DS','3'),(2,'AI-DS','3'),(3,'COMP','5'),(4,'IT','7');
select * from dept;
select * from student;

#CROSS JOIN
SELECT student.id,student.fname,student.lname,dept.dept_id,dept.deptname
FROM student
CROSS JOIN dept;

#NATURAL JOIN
SELECT student.id,student.fname,student.lname,dept.dept_id,dept.deptname
FROM student
NATURAL JOIN dept;
