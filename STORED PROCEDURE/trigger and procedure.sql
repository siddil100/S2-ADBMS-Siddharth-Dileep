create database trigtest;
use trigtest;


CREATE TABLE Student(
studentID INT NOT NULL AUTO_INCREMENT,
FName VARCHAR(20),
LName VARCHAR(20),
Address VARCHAR(30),
City VARCHAR(15),
Marks INT,
PRIMARY KEY(studentID)
);

CREATE TRIGGER changename
before INSERT 
ON student
FOR EACH ROW
SET new.FName = "changed name";

CREATE TRIGGER calculate
before INSERT 
ON student
FOR EACH ROW
SET new.marks = new.marks+100;

drop trigger changename;

set @num1=5;
set @num2=5;
set @result=0;
call addtwo(@num1,@num2,@result);
select @result;
show triggers;
drop trigger triggername;
	
insert into student values(1001,"siddil","dil","erumely","ktm",100);
select*from student;