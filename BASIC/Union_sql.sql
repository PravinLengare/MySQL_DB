USE my_db;
-- CREATE TABLE admin_users (
-- id INT PRIMARY KEY,
-- name VARCHAR(100),
-- email VARCHAR(100),
-- gender ENUM('Male', 'Female', 'Other'),
-- date_of_birth DATE,
-- salary INT
-- );
-- INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
-- (101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
-- (102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
-- (103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
-- (104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);

-- UNION ( IT COMBINES THE TWO OR SELECT QUERIES )

SELECT name,email FROM users 
UNION
SELECT name,email FROM admin_users;

-- UNION ALL ( IT COMBINES THE TWO OR SELECT QUERIES IT ALLOWS THE DUPLICATES )

SELECT name FROM users
UNION ALL
SELECT name FROM admin_users;

-- Adding separate roles
SELECT name, 'USER' AS role FROM users
UNION
SELECT name,'ADMIN' AS role FROM admin_users;

SELECT name FROM users 
UNION
SELECT name FROM admin_users 
ORDER BY name;

SELECT * FROM users;
