# Group by
/*
	GROUP By clause always use aggregation function
    
    SYNTAX
			select col_name, aggregate function (col_name2)....
            FROM table_name
            WHERE  [condition]
            group by col_name
*/ 

use db2;

SELECT * FROM employees;

SELECT gender, COUNT(employee_id) AS emp_count
FROM employees
GROUP BY gender;

# find the count of gender from employees table
SELECT gender, COUNT(employee_id) AS emp_count
FROM employees
GROUP BY gender;

# find the count of employees in each city from employees table
SELECT city, COUNT(employee_id) AS emp_count
FROM employees
GROUP BY city;

# find the count of male employees in each city from employees table
SELECT city, COUNT(employee_id) AS emp_count
FROM employees
WHERE gender = 'male'
GROUP BY city;

# find the count of male employees in each city from employees table
SELECT city, COUNT(employee_id) AS emp_count
FROM employees
WHERE gender = 'male'
GROUP BY city;


/* find the count of female employees in each department
 from employees table
*/
SELECT department, COUNT(employee_id) AS emp_count
FROM
    employees
WHERE
    gender = 'female'
GROUP BY department;

# find the total salary of each department from employees 
SELECT department, SUM(salary) AS total_sal
FROM employees
GROUP BY department;

# find the total salary of each city from employees 
SELECT city, SUM(salary) AS total_sal
FROM employees
GROUP BY city;


# find the min salary of each department
SELECT department, MIN(salary) AS min_salary
FROM employees
GROUP BY department;

# find the max salary of each department 
SELECT department, MAX(salary) AS max_salary
FROM employees
GROUP BY department;

# find the average of each department 
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

# find the total,min,max,average salary of each department
SELECT department,
    SUM(salary) AS total_sal,
    MIN(salary) AS min_sal,
    MAX(salary) AS max_salary,
    AVG(salary) AS avg_sal
FROM employees
GROUP BY department;

/*find the average age,min age,max age of employees 
from each city
*/
SELECT city,
    AVG(emp_age) AS avg_age,
    MIN(emp_age) AS min_age,
    MAX(emp_age) AS max_age
FROM employees
GROUP BY city;

select * from superstore;

# find the total sales of each segment from superstore data
SELECT segment, SUM(sales) AS total_sales
FROM superstore
GROUP BY segment;

# find the avg profit of each segment in west region
SELECT segment, AVG(profit) AS avg_profit
FROM superstore
WHERE region = 'west'
GROUP BY segment;

# find the total sales of each subcategory
SELECT `sub-category`, SUM(sales) AS total_sales
FROM superstore
GROUP BY `sub-category`;

# find the total profit of each category and each region
SELECT category, region, SUM(profit) AS total_profit
FROM superstore
GROUP BY category , region;

# Find the avg_age salary of each department of the  employees whose age is more than 30 from the employees table
SELECT department, AVG(salary) AS avg_sal
FROM employees
WHERE emp_age > 30
GROUP BY department;

# Find the total sales of each category from the supertore where sales is between 50 - 2000
SELECT category, SUM(sales) AS total_sales
FROM superstore
WHERE sales BETWEEN 50 AND 2000
GROUP BY category;

# Find the total sales, avg profit, count of quentity of each segment from the east and west region
SELECT segment, SUM(sales) AS total_sales, AVG(profit) AS avg_profit, COUNT(quantity) AS cnt_qty
FROM superstore
WHERE region IN ('east', 'west')
GROUP BY segment;

# Find the total profit of each sub-category whose city name starts with 'N' or 'C' (use regular expression)
SELECT `sub-category`, SUM(profit) as total_profit
FROM superstore
WHERE city REGEXP '^[CN]'
GROUP BY `sub-category`; 

SELECT `sub-category`, SUM(profit) AS total_profit
FROM superstore
WHERE city LIKE 'C%' OR city LIKE 'N%'
GROUP BY `sub-category`; 

# Find the total profit of each sub-category whose city name have 7 char only (use regular expression, Like operatore)
SELECT `sub-category`, SUM(profit) AS total_profit
FROM superstore
WHERE city REGEXP '^[A-Z]{7}$'
GROUP BY `sub-category`;

SELECT `sub-category`, SUM(profit) AS total_profit
FROM superstore
WHERE city LIKE '_______'
GROUP BY `sub-category`;


