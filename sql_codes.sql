# create database 
create database db3;

# Use data base
use db3;

#Create Table
CREATE TABLE Student (
    stu_id INT PRIMARY KEY AUTO_INCREMENT,
    stu_name VARCHAR(40),
    stu_age INT,
    stu_branch VARCHAR(50)
);

# see all the record in a table
SELECT * FROM Student;

# Drop the table
drop table Student;