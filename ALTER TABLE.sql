/* ALTER Command

It is used to make the changes to the structure of the table:
	- Adding the column
	- Removing the column
    - Modification column properties(contraint add/remove,datatype)
    - Adding and removing constraints
    - Renaming the column
    - Renaming the table itself.
*/

/* Adding the column:
	Syntax :
		ALTER TABLE table_name
        ADD COLUMN column_name datatype ;
*/
select * from employees;

/* add the address column to the employees table */

alter table employees
add column address varchar(100);

/* add the pincode column to the employees table */
alter table employees
add column pincode int;

/* update the pincode whos age is greater than 20 */
set sql_safe_updates  = 0;

update employees
set pincode  = 412115
where emp_age > 20;

alter table employees
add column contact int after email;

select * from employees;

/* DELETING the column
	ALTER TABLE table_name
	DROP COLUMN column_name;
*/
alter table employees
drop column address;

alter table employees
drop column years_of_experience,drop column pincode;

select * from employees;

# Modification column properties(contraint add/remove,datatype)
/* Modify the properties(datatype)
	ALTER TABLE table_name
	MODIFY COLUMN col_name new_datatype;
*/

use db2;

select * from employees;

alter table employees
modify column emp_name int ;

alter table employees
modify column emp_name text(100);

/* modify the column salary, change the datatype to integer */
alter table employees
modify column salary int;

select * from employees;

alter table employees
modify column hire_date int;

select * from employees;

alter table employees
modify column hire_date date;

/* Modify the properties(datatype)
	ALTER TABLE table_name
	MODIFY COLUMN col_name new_datatype new_contraint;
*/

alter table employees
modify column email varchar(120);

INSERT INTO employees (emp_name, gender, city, emp_age, hire_date, designation, department, salary) 
VALUES 
('John Doe', 'male', 'New York', 16, '2020-01-15', 'Software Engineer', 'Engineering', 80000);


alter table employees
modify column emp_age int;

/*Adding and removing contraint
ALTER TABLE table_name 
DROP CONTRAINT contraint_name
*/

create table orders(
	ord_id int primary key,
    product_name varchar(100),
    price int);

alter table orders
drop primary key;

/*Adding and removing contraint
ALTER TABLE table_name 
ADD CONSTRAINT contraint_name contraint_type(col_name)
*/ 

alter table orders
add constraint primary key(ord_id);

alter table orders
add constraint uni unique(product_name);

alter table orders
drop constraint uni;


/* Renaming the column
	ALTER TABLE table_name
    CHANGE COLUMN old_column_name new_column_name datatype;
*/

alter table employees
change column hire_date joining_date date;

select * from employees;

alter table employees
change column employee_id emp_id int;

/* Rename the table

ALTER TABLE table_name
RENAME to new_table_name;

*/
alter table employees
rename to emp;