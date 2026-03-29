create database new;
use new;

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
salary INT
);

INSERT INTO employees VALUES
(1,'Rahul',101,50000),
(2,'Amit',102,60000),
(3,'Sara',101,55000),
(4,'John',103,70000),
(5,'Riya',NULL,45000);

CREATE TABLE departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50),
location VARCHAR(50)
);

INSERT INTO departments VALUES
(101,'HR','Delhi'),
(102,'IT','Mumbai'),
(103,'Finance','Bangalore'),
(104,'Marketing','Pune');

CREATE TABLE projects (
project_id INT PRIMARY KEY,
project_name VARCHAR(50),
dept_id INT
);

INSERT INTO projects VALUES
(201,'Website',102),
(202,'Payroll System',101),
(203,'Audit',103),
(204,'Ad Campaign',104);

-- question 1

select e.name,d.dept_name 
from  employees as e
inner join departments as d
on e.dept_id = d.dept_id;

-- question 2

select e.name,d.location
from employees as e 
inner join departments as d 
on e.dept_id = d.dept_id;

-- question 3

select e.name,d.dept_name
from employees as e
inner join departments as d 
on e.dept_id = d.dept_id
where dept_name = "IT";

-- question 4

select e.name,p.project_name
from employees as e
inner join projects as p
on e.dept_id = p.dept_id;

-- question 5

select e.salary,d.dept_name
from employees as e
inner join departments as d
on e.dept_id = d.dept_id; 

-- question 6

select e.name,d.location
from employees as e
inner join departments as d 
on e.dept_id = d.dept_id
where d.location = "DELHI";

-- question 7

select e.name,p.project_name
from employees as e
inner join projects as p
on e.dept_id = p.dept_id;

-- question 8
select e.name,p.project_name
from employees as e
inner join projects as p
on e.dept_id = p.dept_id
where project_name = "payroll system";

-- question 9

select e.name,d.dept_id
from employees as e
inner join departments as d
on e.dept_id = d.dept_id;

-- question 10 

select e.name,d.location
from employees as e 
inner join departments as d 
on e.dept_id = d.dept_id;

-- question 11
select e.name,d.dept_name
from employees as e
inner join departments as d 
on e.dept_id = d.dept_id
where dept_name = "FINANCE";

-- question 12

select e.name,d.dept_name,e.salary
from  employees as e
inner join departments as d
on e.dept_id = d.dept_id
order by salary;

-- question 13 

select e.name,p.project_id
from employees as e
inner join projects as p 
on e.dept_id = p.dept_id;

-- question 14 full join 

-- question 15

select e.salary,d.location
from employees as e 
inner join departments as d 
on e.dept_id = d.dept_id;

-- question 16

select e.salary,d.location
from employees as e 
inner join departments as d 
on e.dept_id = d.dept_id
where salary > 55000;

-- question 17 

select e.name,d.dept_name,d.location
from employees as e
inner join departments as d
on e.dept_id = d.dept_id
where location = "mumbai";

-- question 18 

select e.name,p.project_name
from employees as e
inner join projects as p 
order by name;

-- question 19 full join 

-- question 20 

select e.name,d.dept_name
from employees as e
inner join departments as d 
on e.dept_id = d.dept_id
where dept_name = "HR";

-- question 21

select e.name,e.salary,d.dept_name
from employees as e 
inner join departments as d 
on e.dept_id = d.dept_id
where salary < 60000;

-- question 22

select e.name,d.location
from employees as e 
inner join departments as d 
on e.dept_id = d.dept_id
where location = "bangalore";

-- question 23

select e.name,p.project_name,e.dept_id
from employees as e
inner join projects as p
on e.dept_id = p.dept_id
where e.dept_id = 102;

-- question 24

select e.salary,d.dept_name
from employees as e
inner join departments as d
on e.dept_id = d.dept_id
order by salary desc;

-- question 25

select e.name,p.project_name
from employees as e
inner join projects as p 
on e.dept_id = p.dept_id
where p.project_id > 200;

-- question 26

select e.name,d.dept_name
from employees as e
inner join departments as d
on e.dept_id = d.dept_id
where d.dept_name like "i%"; 

-- question 27 

select e.name,d.location
from employees as e 
inner join departments as d 
on e.dept_id = d.dept_id;

-- question 28 full join 

-- question 29 

select e.name,d.dept_name
from employees as e 
inner join departments as d
on e.dept_id = d.dept_id 
where dept_name not like "hr%";

-- question 30 

select e.name,p.project_name
from  employees as e
inner join projects as p
on e.dept_id = p.dept_id
order by project_name;

-- question 31 

select e.name,d.location 
from employees as e
inner join departments as d 
on e.dept_id = d.dept_id 
where d.location = "pune";

-- question 32 full join 

-- question 33

select e.name,d.location 
from employees as e 
inner join departments as d 
on e.dept_id = d.dept_id
order by d.location asc;

/** question 34 double join 

select e.name,p.project_id,p.project_name,p.dept_id
from employees as e
inner join projects as p 
on e.dept_id = p.dept_id
where departments ="it" **/

-- question 35

select e.name,e.salary 
from employees as e 
where salary between 50000 and 70000;

-- question 36

select e.name,p.project_name,e.salary
from employees as e
inner join projects as p 
order by salary;

-- question 37 

select e.name,d.dept_name 
from employees as e
inner join departments as d 
where d.dept_id > 101;

-- question 38 

select e.name,d.location,e.salary
from employees as e
inner join departments as d 
where e.salary > 55000;

-- question 39 double join 

-- question 40 

select e.name,d.dept_name
from employees as e
inner join departments as d
on e.dept_id = d.dept_id
where d.dept_name like "%E";

-- question 41 
select e.name,d.dept_name
from employees as e
inner join departments as d
on e.dept_id = d.dept_id
where d.dept_name like "f%";

-- question 42
select e.name,p.project_name
from employees as e
inner join projects as p 
on e.dept_id = p.dept_id
order by name;

-- question 43 
select e.salary,d.location
from employees as e
inner join departments as d
on e.dept_id = d.dept_id;

-- question 44 double join 

-- question 45
select e.name,d.dept_name 
from employees as e
inner join departments as d
on e.dept_id = d.dept_id 
order by dept_name;

-- question 46 

select e.name,p.project_name 
from employees as e 
inner join projects as p 
on e.dept_id = p.dept_id 
where project_id < 203;

-- question 47

select e.name,d.dept_name
from employees as e
inner join departments as d
on e.dept_id = d.dept_id
where dept_name = "finance";

-- question 48 

select e.name,d.dept_name
from employees as e
inner join departments as d
order by d.location;


-- question 49

select e.name,d.dept_name
from employees as e
inner join departments as d
where location ="bangalore"; 

-- question 50 double join 








































