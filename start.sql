Create Database Test1;
Use Test1;
 create table students(Roll_No INT(2) , Name CHAR(100) ,Grade CHAR(1) );
 select * from students;
 create table Teachers(Roll_No INT(2) , Name CHAR(100) ,Grade CHAR(1) );
  select * from Teachers;
create table Department(Sr_No INT(1) , Department CHAR(100) , Floor_no INT(2));
Insert Into Department(Sr_No, Department , Floor_no)
Value (1, "Biology" , 3),
(2 , "Physics" , 2),
(3 , "Maths" , 7);
 select * from Department;
 
  select * from Teachers;
  
  insert into Teachers(Roll_no , Name , Grade)
  value(12,"ramesh", "A"),
  (2, "sumesh",'b'),
  (3, "shyme",'c');
   select * from Teachers;
  
  


	