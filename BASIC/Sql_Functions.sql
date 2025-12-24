USE my_db;

SELECT COUNT(*) AS total_count FROM users;
SELECT COUNT(*) AS total_male FROM users WHERE gender = 'MALE';

-- min and max
SELECT MIN(salary) AS min_salary , MAX(salary) AS max_salary FROM users;
SELECT MIN(salary) AS min_salary_of_male FROM users WHERE gender = 'MALE';

-- 	sum and avg
SELECT SUM(salary) AS sum_of_salary FROM users;
SELECT SUM(salary) AS sum_of_salary_of_female FROM users WHERE gender = 'FEMALE';
SELECT AVG(salary) AS avg_salary FROM users;
SELECT AVG(salary) AS avg_salary_of_male FROM users WHERE gender = 'MALE';

SELECT * FROM users;

-- GROUPING WITH THE GROUP BY 
SELECT gender,AVG(salary) AS avg_salary FROM users 
GROUP BY gender;

-- STRING FUNCTIONS
SELECT name,Length(name) AS name_length FROM users;
SELECT name,UPPER(name) AS upper_case_name FROM users;
SELECT name,LOWER(name) AS upper_case_name FROM users;

-- CONCAT
SELECT CONCAT(name,'<',email,'>') AS user_details FROM users;

-- DATE FUNCTIONS

-- 1. NOW()
SELECT NOW();

-- 2. YEAR(), MONTH(), DAY()
SELECT name,YEAR(date_of_birth) AS birth_year FROM users;
SELECT name,YEAR(date_of_birth) AS birth_year ,MONTH(date_of_birth),DAY(date_of_birth) FROM users;

-- DATEDIFF()
-- Find number of days between today and birthdate 

SELECT name,DATEDIFF(CURDATE(),date_of_birth) AS days_lived FROM users;

-- TIMESTAMPDIFF()
-- Calculate age in years:
SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;

-- MATHEMATICAL FUNCTIONS 
SELECT salary,
ROUND(salary) AS rounded,
FLOOR(salary) AS floored,
CEIL(salary) AS ceiled
FROM users;

SELECT id, MOD(id, 2) AS remainder FROM users;

