# Like Operator.
/* 
	% -> It repersent Zero, One, or Multipale character
    SYNTAX:-
			SELECT col_name, ....
            FROM tab_name
			WHERE col_name LIKE specified_pattern
*/

# Q. Find the records from employees table where emp_name starts with 'M'
select * from employees
where emp_name like 'M%';

# Q. Find the records from employees table where emp_name ends with 'N'
select * from employees
where emp_name like '%n';

# Q. Find the records from employees table where emp_name starts with 'D' and ends with 'n'
select * from employees
where emp_name like 'D%n';

# Q. Find the records from employees table where emp_name starts with 'J' and city name starts with 'C'
select * from employees
where emp_name like 'J%' and city like 'C%';

# Q. Find the records from employees table where emp_name starts with 'E' and department name starts with 'D'
select * from employees
where emp_name like 'E%' and department like 'D%';

use db2;

# Q. Find the employees whose name ends with 'son'
select * from employees
where emp_name like '%son';

# Q. Find the employees whose emails end with '@gmail.com'
select * from employees
where email like '%@gmail.com';


/* 
	_ (underscore) -> It repersent a single number or character
    SYNTAX:-
			SELECT col_name, ....
            FROM tab_name
			WHERE col_name LIKE specified_pattern
*/

# Q. Find the employees whose name contains 'a' at second  postion
select * from employees
where emp_name like '_a%';

# Q. Find the 6 characters department name
select * from employees
where department like '______';

# Q. Find the employees whose name starts with 'J' and ends its 4th  position
select * from employees
where emp_name like 'J__n%';

# Q. find the employees whose email contains 6 characters before dot(.)
select * from employees
where email like '______.%';

# Q. Find the email employees whose name contains 'e' as 3rd char
select * from employees
where emp_name like '__e%' and gender = 'female';

# Q. 