# Clonning

# 1) Simple clonning
/*
	SYNTEX:-
			CREATE TABLE new_table_name SELECT * FROM original_table;
*/
CREATE TABLE emp_simple_copy SELECT * FROM employees;
SELECT * from emp_simple_copy; 

# 2) Shallow Clonning
/*
	Structure with advance defination
    -> In this only the structure is copied.
    SYNTEX:-
			CREATE TABLE new_table_name LIKE original_table;
*/
CREATE TABLE emp_shallow_copy LIKE employees;

# 3) Deep clonning
/*
	SYNTEX:-
			CREATE TABLE new_table_name LIKE original_table
			INSERT INTO new_table_name SELECT * FROM original_table;
*/
CREATE TABLE emp_deep_copy LIKE employees;
INSERT INTO emp_deep_copy SELECT * FROM employees;