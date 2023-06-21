show databases
create database exp3;

use exp3
------------------------------------------------------------------------------QS-createtable

create table emp(empno integer(4) primary key,ename char(10),hiredate date,salary integer,commission int);

------------------------------------------------------------------------------QS-inserting
insert into emp values(101,"Ramesh","1980-01-17", 5000,NULL),
(102 ,"Ajay","1985-07-05", 5000, 500),
(103," Ravi" ,"1981-08-12", 1500,NULL),
(104," Nikesh" ,"1983-03-03", 3000 ,700),
(105, "Ravi", "1985-07-05" ,3000,NULL);



SELECT * from emp
------------------------------------------------------------------------------QS-02
ALTER TABLE emp ADD CONSTRAINT CHECK (salary>='1000');

------------------------------------------------------------------------------QS-03
ALTER TABLE emp ADD CONSTRAINT CHECK(length(empno) <=3);  

------------------------------------------------------------------------------QS-04-A

ALTER TABLE emp ADD SAL NUMERIC(7,2);

------------------------------------------------------------------------------QS-04-B
ALTER TABLE emp DROP COLUMN SAL;

------------------------------------------------------------------------------QS-04-C
ALTER TABLE emp MODIFY ename varchar(15);

------------------------------------------------------------------------------QS-04-D

ALTER TABLE emp RENAME TO emp1 ;

------------------------------------------------------------------------------QS-04-E

TRUNCATE TABLE emp1;

------------------------------------------------------------------------------QS-04-f

DROP TABLE emp1;