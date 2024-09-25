
/*
	Order by clause is used to sort the data in Ascending or descending order, based on one or more columes
	SYNTAX: 
			SELECT col_name...
            FROM table_name
            WHERE [condition]
            ORDER BY col_name ASC/desc
*/

use db2;

# Find the name and department of the employees and short the department in descending order
SELECT emp_name, department
FROM employees
ORDER BY department DESC;

# Find the employees name and their age, who belong chicago and denver and short their age in descending order
SELECT emp_name, emp_age
FROM employees
WHERE city IN ('chicago' , 'denver')
ORDER BY emp_age DESC;

# Find the avg salary of each department and short the avg salary in descending order
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;

# Find the total profit of each sub-category from east and west region and short the total profit in desc order from superstore table
SELECT `sub-category`, SUM(profit) AS total_profit
FROM superstore
WHERE region IN ('east' , 'west')
GROUP BY `sub-category`
ORDER BY total_profit DESC;

# Find the avg sales from each category from the city whose name starts with 'A', 'N' and short the avg sales in asc
SELECT category, AVG(sales) AS avg_sales
FROM superstore
WHERE city REGEXP '^[AN]'
GROUP BY category
ORDER BY avg_sales ASC;
# By the use of Like Oprater
SELECT category, AVG(sales) AS avg_sales
FROM superstore
WHERE city LIKE 'A%' OR city LIKE 'N%'
GROUP BY category
ORDER BY avg_sales ASC;

# Find the name of states and their sales value from superstore data and order by states in asc order 
SELECT state, sales
FROM superstore
ORDER BY state ASC , sales DESC;

# Find the cusotmer name and their profit from the superstore data and short the customer name in asc and profit in desc
SELECT `customer name`, profit
FROM superstore
ORDER BY `customer name` ASC , profit DESC;



