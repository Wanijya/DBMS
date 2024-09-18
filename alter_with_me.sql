# ALTER Table

# Modification column properties (contraint add/remove, datatype)
/* Modify the properties (datatype)
	ALTER TABLE tab_name
    MODIFY COLUMN col_name new_datatype;
*/

use db2;

SELECT * FROM employees;

alter table employees
modify column emp_name int;

alter table employees
modify column emp_name text(100);

alter table employees
modify column salary int;

alter table employees
modify column hire_date int;

alter table employees
modify column hire_date date;

/* Modify the properties (datatype)
	ALTER TABLE tab_name
    MODIFY COLUMN col_name new_datatype new_contraint;
*/

alter table employees
modify column email varchar(120) not null;

INSERT INTO employees (emp_name, gender, city, emp_age, hire_date, designation, department, salary, years_of_experience) 
VALUES 
('John Doe', 'male', 'New York', 30, '2020-01-15', 'Software Engineer', 'Engineering', 80000, 5);


alter table employees
modify column email varchar(120);

INSERT INTO employees (emp_name, gender, city, emp_age, hire_date, designation, department, salary, years_of_experience) 
VALUES 
('John Doe', 'male', 'New York', 30, '2020-01-15', 'Software Engineer', 'Engineering', 80000, 5);


alter table employees
modify column emp_age int check (emp_age > 18);



alter table employees
modify column emp_age int;

INSERT INTO employees (emp_name, gender, city, emp_age, hire_date, designation, department, salary, years_of_experience) 
VALUES 
('John Doe', 'male', 'New York', 16, '2020-01-15', 'Software Engineer', 'Engineering', 80000, 5);

#ye nhi hoga kyu ki kuchha contraint yese hote hai jin ko drop krna padhata hai.



/* 	Adding and removing contraint
	ALTER TABLE table_name
    DROP CONTRAINT contraint_name
*/

create table orders(
	ord_id int primary key,
    product_name varchar(100),
    price int
);

alter table orders
drop primary key;




/* 	Adding and removing contraint
	ALTER TABLE table_name
    ADD CONSTRAINT contraint_name contraint_type(col_name)
*/

alter table orders
add constraint pk1 primary key(ord_id);

alter table orders
add constraint uni unique(product_name);

alter table orders
drop constraint uni;


/* Renaming the column
	ALTER TABLE tab_name
    CHANGE COLUMN old_col_name new_col_name datatype;
*/
alter table employees
change column hire_date joining_date date;

alter table employees
change column employee_id emp_id int;



/* Renaming the table
	ALTER TABLE tab_name
    RENAME to new_tab_name;
*/
alter table employees
rename to emp;

drop table emp;