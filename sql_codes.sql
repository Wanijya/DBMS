# Having Clause
/*
	Jo ki Group By se filter hoke aaya hai data us ko filter krne ke liye Having Clause use hota hai
    Without Group By Having Clause dose't use.
    
    SYNTAX
			SELECT col_name, AGGREGATE(col_name)...
            FROM table_name
            WHERE [condition]
            GROUP BY col_name
            HAVING [aggregate_col_name Condition]
            
            # [] it means or ('ho bhi skta hai nhi bhi.')
*/ 

use db2;

# Find the total sales of each sub-category having total sales more then 1 lakhs
SELECT `sub-category`, SUM(sales) AS total_sales
FROM superstore
GROUP BY `sub-category`
HAVING total_sales > 100000;

# Find the avg age of employees from each department whose age is more then 30 and avg age is more then 34
SELECT department, AVG(emp_age) AS avg_emp_age
FROM employees
WHERE emp_age > 30
GROUP BY department
HAVING avg_emp_age > 34;

# Find the total salary of each department whose salary is between 70000 - 90000 and total salary is greater than 3 lakhs
SELECT department, SUM(salary) AS total_salary
FROM employees 
WHERE salary BETWEEN 70000 AND 90000
GROUP BY department
HAVING total_salary > 300000;

# Find the avg profit and count of quantity of each segment from the east and west region having count of quantity greater than 1200
SELECT segment,
    AVG(profit) AS avg_profit,
    COUNT(quantity) AS cnt_qty
FROM superstore
WHERE region IN ('east' , 'west')
GROUP BY segment
HAVING cnt_qty > 1200;


