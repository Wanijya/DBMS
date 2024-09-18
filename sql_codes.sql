# Regulor Expression 
/*
	Reg. exp operator is used in SQL to fetch the records, to update, delete, by defining a specific pattern.
    >> Metacharacters:-
					1) . = Matches any single character
                    2) ^ = Matches the beginning of the string
                    3) $ = Matches the end of the string
                    4) [] = Character class, Matches any character within the brackets
                    5) [^] = Negated Character class, Matches any character which is not within the brackets.
                    6) | (or) = Matches either the pattern defore or after the pipe. 
			Syntax:- 
					SELECT col_name....
                    FROM table_name
                    WHERE col_name REGEXP "pattern"
*/

use db2;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);

INSERT INTO users (first_name, last_name, email, phone_number, address) VALUES
('John', 'Doe', 'john@gmail.com', '123-456-7890', 'Main St, Cityville'),
('Alice', 'Smith', 'alice02@gmail.com', '234-567-8901', '456 Elm St, Townsville'),
('Bob', 'Johnson', 'bob@example.com', '345-678-9012', '789 Oak St, Villageton'),
('Emily', 'Davis', 'emily@example.com', '456-789-01236', '321 Pine St, Hamletville'),
('Michael', 'Brown', 'michael23@gmail.com', '567-890-12342', 'Maple St, Countryside'),
('Sarah', 'Miller', 'sarah@gmail.com', '678-901-2345', 'Cedar St, Suburbia'),
('David', 'Wilson', 'david@example.com', '789-012-34562', '210 Birch St, Riverside'),
('Jennifer', 'Taylor', 'jennifer33@gmail.com', '890-123-4567', '753 Spruce St, Hillside'),
('James', 'Anderson', 'james@example.com', '901-234-5678', '846 Walnut St, Mountainside'),
('Jessica', 'Thomas', 'jessica@example.com', '012-345-67892', 'Cherry St, Seaside'),
('Matthew', 'White', 'matthew@gmail.com', '987-654-3210', '357 Sycamore St, Lakeside'),
('Luis', 'Martinez', 'luis@example.com', '876-543-2109', '852 Poplar St, Parkville'),
('Daniel', 'Garcia', 'daniel@example.com', '765-432-1098', '741 Birch St, Hilltop'),
('Ashley', 'Hernandez', 'ashley16@example.com', '654-321-0987', 'Cedar St, Valleyview'),
('Christopher', 'Lopez', 'christopher@gmail.com', '543-210-9876', '159 Elm St, Lakeshore'),
('Amanda', 'Gonzalez', 'amanda@example.com', '432-109-87653', 'Maple St, Lakeshore'),
('Kevin', 'Perez', 'kevin15@gmail.com', '321-098-7654', '753 Oak St, Lakeside'),
('Stephanie', 'Torres', 'stephanie@gmail.com', '210-987-6543', '951 Pine St, Hillview'),
('Ryan', 'Flores', 'ryan@gmail.com', '109-876-5432', '852 Elm St, Hillcrest'),
('Nicole', 'Ramirez', 'nicole00@example.com', '098-765-43215', 'Cedar St, Hilltop');

# Q. Find all the users whose first name contains 'le' by the use of Like
SELECT * FROM users
WHERE first_name LIKE '%le%';

# Q. Find all the users whose first name contains 'le' by the use of RegExp
SELECT * FROM users
WHERE first_name REGEXP 'le';

# Q. Find all the users whose first name contains 'a'
SELECT * FROM users
WHERE first_name REGEXP 'a';

# Q. Find all the users whose first name starting with 'a'
SELECT * FROM users
WHERE first_name REGEXP '^am';

# Q. Find the Frist name whose starts with 'J'
SELECT * FROM users
WHERE first_name REGEXP '^J';

# Q. Find the Frist name whose end with 'a'
SELECT * FROM users
WHERE first_name REGEXP 'a$';

# Q. Find the whose last name end with 'ez'
SELECT * FROM users
WHERE last_name REGEXP 'ez$';

# Q. Find the whose first name starts with 'a' and last name end with 'ez'
SELECT * FROM users
WHERE first_name REGEXP '^A' AND last_name REGEXP 'ez$';

# Q. Find all the users whose phone number contains '987' or '876' or '765'
# By the use of or
SELECT * FROM users
WHERE phone_number REGEXP '987' or phone_number REGEXP '876' or phone_number REGEXP '765';

SELECT * FROM users
WHERE phone_number REGEXP '987|876|765';

# Q. Find the users whose First name either 'a' or either 'r';
SELECT * FROM users
WHERE first_name REGEXP 'a|r';

SELECT * FROM users
WHERE first_name REGEXP '[ar]';

# Q. Find all the users whose starts with 'a' or starts with 'r'
SELECT * FROM users
WHERE first_name REGEXP '^a|^r';
SELECT * FROM users
WHERE first_name REGEXP '^[ar]';

# Q. Find all the users whose starts with 'j' or 'm';
SELECT * FROM users
WHERE first_name REGEXP '^[jm]';

SELECT * FROM users
WHERE first_name REGEXP '^j|^m';

# Q. Find the all users whose first_name starts with vowel
SELECT * FROM users
WHERE first_name REGEXP '^[aeiou]';

# Q. Find all the users whose address is starts with number
SELECT * FROM users
WHERE address REGEXP '^[0-9]';
SELECT * FROM users
WHERE address REGEXP '^[0123456789]';

# Q. Find the records whose email contain number before '@'
SELECT * FROM users
WHERE email REGEXP '[0-9]@';

# Q. Find the users whose first name contains only 5 characters
SELECT * FROM users
WHERE first_name REGEXP '^[a-z]{5}$';

# Q. Find the user whose first name conatins 'nn'
SELECT * FROM users
WHERE first_name REGEXP 'nn';
SELECT * FROM users
WHERE first_name REGEXP '[n]{2}';

# Q. Find the users whose phone number have format 'xxx-xxx-xxxx'
SELECT * FROM users
WHERE phone_number REGEXP '^[0-9]{3}-[0-9]{3}-[0-9]{4}$';

# Q. Find the users Whose last_name contains two consecutive vowels
SELECT * FROM users
WHERE last_name REGEXP '[aeiou]{2}';