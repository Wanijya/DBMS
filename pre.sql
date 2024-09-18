# create database-
create database db2;

# Use db
use db2;

#Create Table:
create table Student(
		stu_id int primary key auto_increment,
        stu_name varchar(40),
        stu_age int,
        stu_branch varchar(50)
);

# see all the record in a table
select * from employees;


/* 
	Distinct:
		The SQL Distinct keyword is used in conjuction with SELECT statment to featch the unique records from the table.
        
        Syntax: 
			select DISTINCT col_name, col2.....
			from table_name;
*/
select distinct(city) as unique_city from employees;


# find the unique department and designation
select distinct department, designation from employees;


# it will find the uniqe records from the table
select count(distinct(city)) as unique_value_count from employees;


# find the average age,min age, max age in single query
select avg(emp_age) as avg_age, min(emp_age) as min_age, max(emp_age) as max_age from employees;


## How to Filter all the records
/* 
	WHERE clause
		The WHERE clause in MySQL server to filter the result of your database queries.
        
        - It works in conjunction with commands like, SELECT, UPDATE, DELETE to specify which rows you want to work with.
*/
select * from employees;
# 1. WHERE with SELECT
/*
	Syntax:
		SELECT col_name.... FROM table_name WHERE condition
*/
# Q. Find The employee id, employee_name, gender, and city from employees table who belongs to new york city
select employee_id, emp_name, gender,city from employees where city = "new york";

# Q. Find the employee id, employee_name, emp_age, designation from the employees table belogns to Human Resources Directer
select employee_id, emp_name, emp_age, designation from employees where designation = "Human Resources Director";

# Q. Find the all records from the employees table Whose age is more then 32
select * from employees where emp_age > 32;

# Q. Find the all records from the employees table Whose salary is more then 75000
select * from employees where salary > 75000;


# 2. WHERE with UPDATE
/*
	If you want to modify the exsiting record in a table we use update command.
    
    Syntax: 
			UPDATE table_name
            SET col_name = val, col_name2 = val2....
            WHERE [condition] 
*/
update employees set emp_age = 32 where employee_id = 1;
select * from employees;

set sql_safe_updates = 0;  # How to disable Safe Mode.
update employees set emp_age = 32 where emp_age = 30;

# Q. Find the hows age is 30
update employees set emp_age = 42 where emp_age > 38;

# Q. Update the salary for the employe whose age is 35
update employees set salary = 92000 where emp_age > 35;

# Q. Update the salary of employees increase the salary by 2000 whose salary is less than 75000
update employees set salary = 2000 where salary < 75000; #this is worng...😒
update employees set salary = salary + 2000 where salary > 75000;

# Q. UTS whoes department is Finance
update employees set salary = salary - 2000 where department = 'Finance';

# Q. Update the age of employees increase their age by 1 year whose hire_date is before 2018
update employees set emp_age = emp_age + 1 where hire_date < '2018-01-01';


/*
	WHERE with DELETE
	-> Delete
    Syntax:- DELETE FROM table_name WHERE condition; 
    --> delete query ko use krne se us ko ham role back kar skte hai 
    --> multipal record delete krna hai to bhi sql_safe_updates ko band krna hota hai.
    --> Delete se jha last id hoti hai usi se baad wali id se new data insert hota hai but TRUNCATE me yesa nhi hota.
			
*/
set sql_safe_updates = 0;

delete from employees;


INSERT INTO employees (emp_name, email, gender, city, emp_age, hire_date, designation, department, salary, years_of_experience) 
VALUES 
('John Doe', 'john.doe@example.com', 'male', 'New York', 30, '2020-01-15', 'Software Engineer', 'Engineering', 80000, 5);


truncate employees;


INSERT INTO employees (emp_name, email, gender, city, emp_age, hire_date, designation, department, salary, years_of_experience) 
VALUES 
('John Doe', 'john.doe@example.com', 'male', 'New York', 30, '2020-01-15', 'Software Engineer', 'Engineering', 80000, 5),
('Jane Smith', 'jane.smith@example.com', 'female', 'Los Angeles', 28, '2020-02-20', 'Marketing Director', 'Marketing', 75000, 6),
('Michael Johnson', 'michael.johnson@gmail.com', 'male', 'Chicago', 35, '2019-05-10', 'Financial Analyst', 'Finance', 70000, 8),
('Emily Brown', 'emily.brown@gmail.com', 'female', 'Houston', 32, '2018-09-03', 'Human Resources Director', 'Human Resources', 90000, 10),
('David Wilson', 'david.wilson@example.com', 'male', 'Chicago', 40, '2017-11-25', 'Software Engineer', 'Engineering', 95000, 12),
('Sarah Martinez', 'sarah.martinez@example.com', 'female', 'New York', 27, '2021-03-12', 'Sales Associate', 'Sales', 70000, 4),
('James Taylor', 'james.taylor@example.com', 'male', 'Houston', 33, '2016-08-18', 'Business Analyst', 'Business Development', 88000, 9),
('Linda Lee', 'linda.lee@example.com', 'female', 'Chicago', 29, '2020-04-29', 'Product Designer', 'Design', 82000, 7),
('Christopher Rodriguez', 'christopher.rodriguez@gmail.com', 'male', 'Chicago', 31, '2019-02-14', 'Marketing Director', 'Marketing', 78000, 5),
('Amanda Campbell', 'amanda.campbell@gmail.com', 'female', 'Los Angeles', 34, '2018-06-07', 'Financial Analyst', 'Finance', 72000, 8),
('Matthew Young', 'matthew.young@example.com', 'male', 'Houston', 26, '2021-08-22', 'Software Engineer', 'Engineering', 72000, 3),
('Jennifer Hernandez', 'jennifer.hernandez@gmail.com', 'female', 'Los Angeles', 30, '2017-12-05', 'Content Writer', 'Content', 84000, 9),
('Daniel Nguyen', 'daniel.nguyen@example.com', 'male', 'Denver', 36, '2018-03-19', 'Product Designer', 'Design', 89000, 7),
('Michelle Kim', 'michelle.kim@example.com', 'female', 'Chicago', 28, '2020-10-14', 'Human Resources Director', 'Human Resources', 73000, 4),
('Joshua Turner', 'joshua.turner@example.com', 'male', 'Los Angeles', 32, '2016-05-28', 'Sales Associate', 'Sales', 91000, 10),
('Kimberly Adams', 'kimberly.adams@example.com', 'female', 'San Diego', 29, '2019-09-01', 'Marketing Director', 'Marketing', 76000, 6),
('Brian Scott', 'brian.scott@example.com', 'male', 'Denver', 37, '2017-07-11', 'Business Analyst', 'Business Development', 94000, 8),
('Lisa Clark', 'lisa.clark@gmail.com', 'female', 'Denver', 31, '2021-01-04', 'Human Resources Director', 'Human Resources', 77000, 5),
('Kevin Baker', 'kevin.baker@example.com', 'male', 'San Diego', 27, '2018-04-30', 'Software Engineer', 'Engineering', 80000, 6),
('Melissa Hill', 'melissa.hill@example.com', 'female', 'Chicago', 33, '2017-10-17', 'Financial Analyst', 'Finance', 68000, 5),
('Erica Ward', 'erica.ward@example.com', 'female', 'New York', 30, '2020-02-12', 'Marketing Director', 'Marketing', 78000, 7),
('Robert Gonzalez', 'robert.gonzalez@gmail.com', 'male', 'Denver', 35, '2019-03-25', 'Sales Associate', 'Sales', 92000, 10),
('Stephanie Baker', 'stephanie.baker@example.com', 'female', 'New York', 28, '2018-05-19', 'Sales Associate', 'Sales', 74000, 4),
('William Perez', 'william.perez@gmail.com', 'male', 'New York', 34, '2016-06-13', 'Sales Associate', 'Sales', 90000, 8),
('Rebecca Flores', 'rebecca.flores@gmail.com', 'female', 'Denver', 29, '2019-11-08', 'Content Writer', 'Content', 79000, 6),
('Joseph Murphy', 'joseph.murphy@gmail.com', 'male', 'Denver', 31, '2020-03-27', 'Product Designer', 'Design', 93000, 9),
('Christina Richardson', 'christina.richardson@example.com', 'female', 'New York', 36, '2017-08-14', 'Data Analyst', 'Data Science', 75000, 5),
('Edward Turner', 'edward.turner@example.com', 'male', 'Denver', 27, '2021-09-09', 'Data Analyst', 'Data Science', 82000, 4),
('Laura Morris', 'laura.morris@example.com', 'female', 'Chicago', 32, '2018-12-02', 'Product Designer', 'Design', 77000, 7),
('Patrick Sanchez', 'patrick.sanchez@example.com', 'male', 'Chicago', 33, '2016-11-16', 'Content Writer', 'Content', 89000, 8),
('Samantha Morgan', 'samantha.morgan@example.com', 'female', 'New York', 30, '2020-06-29', 'Data Analyst', 'Data Science', 80000, 6),
('Justin Coleman', 'justin.coleman@gmail.com', 'male', 'Chicago', 35, '2019-01-22', 'Business Analyst', 'Business Development', 88000, 9),
('Rachel Ward', 'rachel.ward@example.com', 'female', 'Los Angeles', 28, '2017-04-07', 'Marketing Director', 'Marketing', 76000, 4),
('Brandon Bell', 'brandon.bell@example.com', 'male', 'Los Angeles', 36, '2018-07-03', 'Data Analyst', 'Data Science', 91000, 8),
('Amy Cook', 'amy.cook@example.com', 'female', 'Chicago', 31, '2021-02-18', 'Product Designer', 'Design', 78000, 5),
('Nicholas Stewart', 'nicholas.stewart@example.com', 'male', 'Chicago', 29, '2016-10-12', 'Business Analyst', 'Business Development', 93000, 9),
('Cassandra Murphy', 'cassandra.murphy@gmail.com', 'female', 'San Diego', 34, '2019-05-06', 'Data Analyst', 'Data Science', 74000, 6),
('Tyler Rivera', 'tyler.rivera@example.com', 'male', 'Los Angeles', 30, '2018-08-28', 'Software Engineer', 'Engineering', 90000, 7),
('Heather Price', 'heather.price@example.com', 'female', 'Los Angeles', 27, '2020-11-15', 'Content Writer', 'Content', 79000, 4),
('Ryan White', 'ryan.white@gmail.com', 'male', 'San Diego', 32, '2017-06-25', 'Data Analyst', 'Data Science', 92000, 8);



# Q. Delete 40th Record.
delete from employees where employee_id = 40;

# Q. Delete the record from employees whose belong to markering depta
delete from employees where department = 'Marketing';

# Q. Delete the records from employees whos salary is greater than 75000.
delete from employees where salary > 75000;


# Q. Delete the records from employees whos hire_date is after 2019.
delete from employees where hire_date > '2019-12-31';


# Q. Delete the record from employees who years of experience is greater than equals to 10
delete from employees where years_of_experience >= 7;

# Q. Delete the records from employees whos emp_age is less than 32
delete from employees where emp_age < 32;


# Q. Delete the records from the employees whos belong to Chicago
delete from employees where city = 'Chicago';

# Q. Delete the records from employees who department is DS
delete from employees where department = 'Data Science';


truncate employees;

INSERT INTO employees (emp_name, email, gender, city, emp_age, hire_date, designation, department, salary, years_of_experience) 
VALUES 
('John Doe', 'john.doe@example.com', 'male', 'New York', 30, '2020-01-15', 'Software Engineer', 'Engineering', 80000, 5),
('Jane Smith', 'jane.smith@example.com', 'female', 'Los Angeles', 28, '2020-02-20', 'Marketing Director', 'Marketing', 75000, 6),
('Michael Johnson', 'michael.johnson@gmail.com', 'male', 'Chicago', 35, '2019-05-10', 'Financial Analyst', 'Finance', 70000, 8),
('Emily Brown', 'emily.brown@gmail.com', 'female', 'Houston', 32, '2018-09-03', 'Human Resources Director', 'Human Resources', 90000, 10),
('David Wilson', 'david.wilson@example.com', 'male', 'Chicago', 40, '2017-11-25', 'Software Engineer', 'Engineering', 95000, 12),
('Sarah Martinez', 'sarah.martinez@example.com', 'female', 'New York', 27, '2021-03-12', 'Sales Associate', 'Sales', 70000, 4),
('James Taylor', 'james.taylor@example.com', 'male', 'Houston', 33, '2016-08-18', 'Business Analyst', 'Business Development', 88000, 9),
('Linda Lee', 'linda.lee@example.com', 'female', 'Chicago', 29, '2020-04-29', 'Product Designer', 'Design', 82000, 7),
('Christopher Rodriguez', 'christopher.rodriguez@gmail.com', 'male', 'Chicago', 31, '2019-02-14', 'Marketing Director', 'Marketing', 78000, 5),
('Amanda Campbell', 'amanda.campbell@gmail.com', 'female', 'Los Angeles', 34, '2018-06-07', 'Financial Analyst', 'Finance', 72000, 8),
('Matthew Young', 'matthew.young@example.com', 'male', 'Houston', 26, '2021-08-22', 'Software Engineer', 'Engineering', 72000, 3),
('Jennifer Hernandez', 'jennifer.hernandez@gmail.com', 'female', 'Los Angeles', 30, '2017-12-05', 'Content Writer', 'Content', 84000, 9),
('Daniel Nguyen', 'daniel.nguyen@example.com', 'male', 'Denver', 36, '2018-03-19', 'Product Designer', 'Design', 89000, 7),
('Michelle Kim', 'michelle.kim@example.com', 'female', 'Chicago', 28, '2020-10-14', 'Human Resources Director', 'Human Resources', 73000, 4),
('Joshua Turner', 'joshua.turner@example.com', 'male', 'Los Angeles', 32, '2016-05-28', 'Sales Associate', 'Sales', 91000, 10),
('Kimberly Adams', 'kimberly.adams@example.com', 'female', 'San Diego', 29, '2019-09-01', 'Marketing Director', 'Marketing', 76000, 6),
('Brian Scott', 'brian.scott@example.com', 'male', 'Denver', 37, '2017-07-11', 'Business Analyst', 'Business Development', 94000, 8),
('Lisa Clark', 'lisa.clark@gmail.com', 'female', 'Denver', 31, '2021-01-04', 'Human Resources Director', 'Human Resources', 77000, 5),
('Kevin Baker', 'kevin.baker@example.com', 'male', 'San Diego', 27, '2018-04-30', 'Software Engineer', 'Engineering', 80000, 6),
('Melissa Hill', 'melissa.hill@example.com', 'female', 'Chicago', 33, '2017-10-17', 'Financial Analyst', 'Finance', 68000, 5),
('Erica Ward', 'erica.ward@example.com', 'female', 'New York', 30, '2020-02-12', 'Marketing Director', 'Marketing', 78000, 7),
('Robert Gonzalez', 'robert.gonzalez@gmail.com', 'male', 'Denver', 35, '2019-03-25', 'Sales Associate', 'Sales', 92000, 10),
('Stephanie Baker', 'stephanie.baker@example.com', 'female', 'New York', 28, '2018-05-19', 'Sales Associate', 'Sales', 74000, 4),
('William Perez', 'william.perez@gmail.com', 'male', 'New York', 34, '2016-06-13', 'Sales Associate', 'Sales', 90000, 8),
('Rebecca Flores', 'rebecca.flores@gmail.com', 'female', 'Denver', 29, '2019-11-08', 'Content Writer', 'Content', 79000, 6),
('Joseph Murphy', 'joseph.murphy@gmail.com', 'male', 'Denver', 31, '2020-03-27', 'Product Designer', 'Design', 93000, 9),
('Christina Richardson', 'christina.richardson@example.com', 'female', 'New York', 36, '2017-08-14', 'Data Analyst', 'Data Science', 75000, 5),
('Edward Turner', 'edward.turner@example.com', 'male', 'Denver', 27, '2021-09-09', 'Data Analyst', 'Data Science', 82000, 4),
('Laura Morris', 'laura.morris@example.com', 'female', 'Chicago', 32, '2018-12-02', 'Product Designer', 'Design', 77000, 7),
('Patrick Sanchez', 'patrick.sanchez@example.com', 'male', 'Chicago', 33, '2016-11-16', 'Content Writer', 'Content', 89000, 8),
('Samantha Morgan', 'samantha.morgan@example.com', 'female', 'New York', 30, '2020-06-29', 'Data Analyst', 'Data Science', 80000, 6),
('Justin Coleman', 'justin.coleman@gmail.com', 'male', 'Chicago', 35, '2019-01-22', 'Business Analyst', 'Business Development', 88000, 9),
('Rachel Ward', 'rachel.ward@example.com', 'female', 'Los Angeles', 28, '2017-04-07', 'Marketing Director', 'Marketing', 76000, 4),
('Brandon Bell', 'brandon.bell@example.com', 'male', 'Los Angeles', 36, '2018-07-03', 'Data Analyst', 'Data Science', 91000, 8),
('Amy Cook', 'amy.cook@example.com', 'female', 'Chicago', 31, '2021-02-18', 'Product Designer', 'Design', 78000, 5),
('Nicholas Stewart', 'nicholas.stewart@example.com', 'male', 'Chicago', 29, '2016-10-12', 'Business Analyst', 'Business Development', 93000, 9),
('Cassandra Murphy', 'cassandra.murphy@gmail.com', 'female', 'San Diego', 34, '2019-05-06', 'Data Analyst', 'Data Science', 74000, 6),
('Tyler Rivera', 'tyler.rivera@example.com', 'male', 'Los Angeles', 30, '2018-08-28', 'Software Engineer', 'Engineering', 90000, 7),
('Heather Price', 'heather.price@example.com', 'female', 'Los Angeles', 27, '2020-11-15', 'Content Writer', 'Content', 79000, 4),
('Ryan White', 'ryan.white@gmail.com', 'male', 'San Diego', 32, '2017-06-25', 'Data Analyst', 'Data Science', 92000, 8);

/*
	AND, OR, IN 
    IN oparter kaa use Multipal OR oprater me krte hai jo ki ek colum se blong krte hai
*/

SELECT * FROM employees 
WHERE gender = 'Male' AND city = 'Chicago';
    
# Q. Find The female employees who hire_date is before 2018
SELECT * FROM employees
WHERE gender = 'female' AND hire_date < '2018-01-01'; 

# Q. Find the employees whose department is sales and salary is more than 75000
SELECT * FROM employees
WHERE department = 'Sales' AND salary > 75000;


# Q. Find the employees whose age is more than 35 and experience is more than 6
SELECT * FROM employees
WHERE emp_age > 35 AND years_of_experience > 6;

# Q. Find the records of New York, Chicago Belonging employees
SELECT * FROM employees
WHERE city = 'New York' OR city = 'Chicago';


# Q. Find the records of Sales, Finance, Marketing belonging employees.
SELECT * FROM employees
WHERE department = 'Sales'
		OR department = 'Finance'
        OR department = 'Marketing';
	
  # By use of IN 
SELECT * FROM employees
WHERE department IN ('Sales' , 'Finance', 'Marketing');
        
        
# Q. Find the employees whose age is more than 30 and less than 40
SELECT * FROM employees
WHERE emp_age > 30 AND emp_age < 40;


# Q. Find the employees whose salary is greater than equal to 70000 and less than equal to 90000
SELECT * FROM employees
WHERE salary >= 70000 AND salary <= 90000;


# Q. Find the employees who Houston, Denver and whose salary is less than 80000
SELECT * FROM employees
WHERE (city = 'Houston' OR city = 'Denver') AND salary < 80000;
# By the use of IN 
SELECT * FROM employees
WHERE city IN ('Houston', 'Denver') AND salary < 80000;


# Q. Find the employees whose Blongs to Chicago, New York, Los Angeles.
SELECT * FROM employees
WHERE city IN ('Chicago' , 'New York', 'Los Angeles');


# Q. Find the employees whose hire_date is after 2018 and who blongs to Engineering, Human 
SELECT * FROM employees
WHERE hire_date > '2018-12-31'
        AND department IN ('Engineering' , 'Human Resources',
        'Business Development');

# Q. Find the employees whos age is between 30 to 40 and salary is between 70000 to 90000 without use between 
SELECT * FROM employees
WHERE (emp_age >= 30 AND emp_age <= 40)
        AND (salary >= 70000 AND salary <= 90000);
 
SELECT * FROM employees;








