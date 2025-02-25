Create database DML;

use DML;

Create table Student ( 
Student_id int primary key ,
name varchar(50),
age int,
grade varchar(2));

INSERT INTO Student (Student_id, name, age, grade)
VALUES
    (1, 'John', 18, 'A'),
    (2, 'Emily', 19, 'B'),
    (3, 'Michael', 20, 'C'),
    (4, 'Sarah', 18, 'A'),
    (5, 'David', 21, 'D'),
    (6, 'Jessica', 20, 'B'),
    (7, 'Daniel', 19, 'C'),
    (8, 'Sophia', 18, 'A'),
    (9, 'Ryan', 21, 'D'),
    (10, 'Liam', 20, 'B'),
    (11, 'Olivia', 18, 'A'),
    (12, 'James', 19, 'C'),
    (13, 'Emma', 21, 'B'),
    (14, 'Mason', 20, 'D'),
    (15, 'Ava', 18, 'A'),
    (16, 'Ethan', 19, 'C'),
    (17, 'Isabella', 20, 'B'),
    (18, 'Lucas', 21, 'A'),
    (19, 'Mia', 19, 'D'),
    (20, 'Noah', 18, 'B'),
    (21, 'Charlotte', 20, 'A'),
    (22, 'Oliver', 19, 'C'),
    (23, 'Amelia', 18, 'D'),
    (24, 'Benjamin', 21, 'B'),
    (25, 'Harper', 20, 'A'),
    (26, 'Jack', 19, 'C'),
    (27, 'Evelyn', 21, 'D'),
    (28, 'Henry', 18, 'B'),
    (29, 'Abigail', 20, 'A'),
    (30, 'Alexander', 19, 'C'),
    (31, 'Sofia', 21, 'B'),
    (32, 'Jackson', 18, 'D'),
    (33, 'Ella', 19, 'A'),
    (34, 'Sebastian', 20, 'B'),
    (35, 'Aiden', 18, 'C'),
    (36, 'Scarlett', 21, 'D'),
    (37, 'Matthew', 20, 'A'),
    (38, 'Grace', 19, 'B'),
    (39, 'Elijah', 21, 'C'),
    (40, 'Chloe', 18, 'D'),
    (41, 'Logan', 19, 'A'),
    (42, 'Lily', 20, 'B'),
    (43, 'Caleb', 21, 'C'),
    (44, 'Zoey', 18, 'D'),
    (45, 'Isaac', 19, 'A'),
    (46, 'Aria', 20, 'B'),
    (47, 'Jayden', 21, 'C'),
    (48, 'Ellie', 18, 'D'),
    (49, 'Owen', 19, 'A'),
    (50, 'Aubrey', 20, 'B'),
    (51, 'Gabriel', 21, 'C'),
    (52, 'Hannah', 18, 'D'),
    (53, 'Carter', 19, 'A'),
    (54, 'Avery', 20, 'B'),
    (55, 'Wyatt', 21, 'C'),
    (56, 'Addison', 18, 'D'),
    (57, 'Dylan', 19, 'A'),
    (58, 'Nora', 20, 'B'),
    (59, 'Levi', 21, 'C'),
    (60, 'Riley', 18, 'D'),
    (61, 'Nathan', 19, 'A'),
    (62, 'Zoey', 20, 'B'),
    (63, 'Samuel', 21, 'C'),
    (64, 'Victoria', 18, 'D'),
    (65, 'Luke', 19, 'A'),
    (66, 'Penelope', 20, 'B'),
    (67, 'Anthony', 21, 'C'),
    (68, 'Lillian', 18, 'D'),
    (69, 'Andrew', 19, 'A'),
    (70, 'Madison', 20, 'B'),
    (71, 'Isaiah', 21, 'C'),
    (72, 'Aurora', 18, 'D'),
    (73, 'Joshua', 19, 'A'),
    (74, 'Eleanor', 20, 'B'),
    (75, 'Christopher', 21, 'C'),
    (76, 'Paisley', 18, 'D'),
    (77, 'Eli', 19, 'A'),
    (78, 'Anna', 20, 'B'),
    (79, 'Thomas', 21, 'C'),
    (80, 'Samantha', 18, 'D'),
    (81, 'Charles', 19, 'A'),
    (82, 'Leah', 20, 'B'),
    (83, 'Hunter', 21, 'C'),
    (84, 'Audrey', 18, 'D'),
    (85, 'Adrian', 19, 'A'),
    (86, 'Savannah', 20, 'B'),
    (87, 'Jonathan', 21, 'C'),
    (88, 'Brooklyn', 18, 'D'),
    (89, 'Christian', 19, 'A'),
    (90, 'Bella', 20, 'B'),
    (91, 'Jeremiah', 21, 'C'),
    (92, 'Hazel', 18, 'D'),
    (93, 'Evan', 19, 'A'),
    (94, 'Lucy', 20, 'B'),
    (95, 'Aaron', 21, 'C'),
    (96, 'Stella', 18, 'D'),
    (97, 'Connor', 19, 'A'),
    (98, 'Violet', 20, 'B'),
    (99, 'Landon', 21, 'C'),
    (100, 'Claire', 18, 'D');
    
    select * from Student;
    desc Student;
    select name from Student;
    select name , grade from Student;
    select name , grade, age from Student;
    select * from Student;
    
    INSERT INTO Student (Student_id, name, age, grade)
VALUES
 (101, 'John kennedy', 18, 'A');
  select * from Student;
  
  update Student set name = 'john cena ' where Student_id=1;
  select * from Student;
  
  delete from Student where Student_id= 101;
  select * from Student;
  
  -- order statements by age in ascending order (Basic ordering)
select * from Student 
order by age;

select * from Student 
order by Student_id  ;
  
  -- order statements in age desending order (Descending order)
  
  select * from Student 
order by Student_id Desc ;
  
  
  
  
  -- Order Statement first by Grade (ascending) and then by descending (multuple 
select * from Student 
order by grade ASC , age DESC ;
    
    
    
-- order statement by name in aplhabateical order (Alphabetic order)

select * from Student 
order by name  ;

-- order Students  by grade in ascending order , but age is descending order within each grade 

select * from Student 
order by grade ASC , age DESC ;

