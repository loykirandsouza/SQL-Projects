create database class;
use class;





create table student_data( 
Roll_no INT(10), 
Name VARCHAR(50),
Marks DECIMAL(5,2),
Grade CHAR(1)
);

insert into student_data (Roll_no , Name , Marks , Grade )
values
	(1, 'Arjun' ,95.50, 'a'),
    (2, 'Anupam' ,88.75, 'b'),
    (3, 'Ishan' ,78.25, 'c'),
    (4, 'Krish' ,92.0, 'a'),
    (5, 'Mohish',85.50,'b'),
    (6, 'Nithin' ,77.00,'c'),
    (7, 'Parin' , 90.25 , 'a'),
    (8, 'Rishi', 83.75, 'b'),
    (9, 'Rohit' ,77.58 ,'c'),
    (10, 'Rahul' ,94.75 ,'a');
    
    Select * from student_data;
    Alter table student_data Add column Result char(10);
    alter table student_data modify column Result Int(10);
    alter table student_data modify column Result char(10);
	Alter table student_data drop Result;
    desc student_data;
    Select * from student_data;
    
use test1;
show tables;

drop table teachers;
show tables;

select * from department;


show tables;
alter table students rename to Boys;
show tables;
select * from Boys;
    
   
    
   
    



