create database corporate;
use corporate;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_department_id INT
);

INSERT INTO Employees (emp_id, emp_name, emp_department_id) VALUES
(1, 'JohnDoe', 101),
(2, 'JaneSmith', 102),
(3, 'BobJohnson', 101),
(4, 'AliceBrown', 102),
(5, 'CharlieDavis', 101),
(6, 'EvaWhite', 103),
(7, 'FrankJones', 103),
(8, 'GraceMiller', 101),
(9, 'HarryWilson', 102),
(10, 'IvyMartin', 103),
(11, 'JackAnderson', 102),
(12, 'KellyThomas', 101),
(13, 'LeoHarris', 103),
(14, 'MiaGarcia', 101),
(15, 'NickTaylor', 102),
(16, 'OliviaClark', 103),
(17, 'PaulaAllen', 102),
(18, 'QuinnScott', 101),
(19, 'RandyWard', 103),
(20, 'SaraHall', 102),
(21, 'Mart Ward', 109),
(22, 'Sam Hall', 107);

select * from Employees;



CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO Departments (department_id, department_name) VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Marketing'),
(104, 'Finance'),
(105, 'Operations');

select * from Departments;



CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    project_lead_id INT
);

INSERT INTO Projects (project_id, project_name, project_lead_id) VALUES
(1, 'Project A', 1),
(2, 'Project B', 2),
(3, 'Project C', 3),
(4, 'Project D', 4),
(5, 'Project E', 5);

select * from Employees;

CREATE TABLE Salaries (
    emp_id INT PRIMARY KEY,
    salary_amount INT
);

INSERT INTO Salaries (emp_id, salary_amount) VALUES
(1, 60000),
(2, 75000),
(3, 55000),
(4, 80000),
(5, 65000),
(6, 70000),
(7, 60000),
(8, 85000),
(9, 75000),
(10, 90000),
(11, 70000),
(12, 60000),
(13, 80000),
(14, 55000),
(15, 75000),
(16, 70000),
(17, 85000),
(18, 60000),
(19, 80000),
(20, 70000);

select * from Salaries;


-- problem staement : Retrive a list of the employees along with thier department information . showing the only those employees who belong to the department 
-- inner join

select * from Employees Inner join Departments 
on Employees.emp_department_id = Departments.department_id;

select emp_id , emp_name , department_name from Employees Inner join Departments 
on Employees.emp_department_id = Departments.department_id;


-- problem staement :Display a list of all  employees and thier corresponding sallery information including those employees who dont have sallary entry
-- left join

select * from Employees  LEFT JOIN Salaries 
on  Employees.emp_id =Salaries.emp_id;

select Employees.emp_id, emp_name, salary_amount from Employees  LEFT JOIN Salaries 
on  Employees.emp_id =Salaries.emp_id ;

-- problem staement : Generate the report of all salary records along with the employee information , ensuaring that all salary entries are included, and display null for employees without the salaries record 

-- Right join

select * From Salaries Right join Employees 
on Employees.emp_id = salaries.emp_id;

select Employees.emp_id ,emp_name ,salary_amount From Salaries Right join Employees 
on Employees.emp_id = salaries.emp_id;

-- problem staement :  Create a Comprehensive report that includes both employees and project information , indicateing the project lead for each project . Include all employees and project . even if they are not currently assigned to a project. 

-- my sql dont support full outer join 

SELECT * 
FROM Employees 
LEFT JOIN Projects ON Employees.emp_id = Projects.project_lead_id

UNION

SELECT * 
FROM Employees 
RIGHT JOIN Projects ON Employees.emp_id = Projects.project_lead_id;

SELECT * 
FROM Employees 
LEFT JOIN Projects ON Employees.emp_id = Projects.project_lead_id

UNION

SELECT * 
FROM Employees 
RIGHT JOIN Projects ON Employees.emp_id = Projects.project_lead_id;



 -- Problem statement : Generate a matrix of all possible combinations of Employee and department Regardless of whether there is a actual assignment of employees department, this is useful. For exploring all possible pairings.

select Employees.emp_id, emp_name, department_name from Employees  Cross Join Departments;
