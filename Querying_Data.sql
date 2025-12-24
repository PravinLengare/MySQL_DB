SELECT * FROM users;
-- Equal To
SELECT * FROM users WHERE gender='MALE';

SELECT * FROM users WHERE gender!='FEMALE';
SELECT * FROM users WHERE gender <>'FEMALE';

-- Greater Than / Less Than

SELECT * FROM users WHERE salary > 65000;
SELECT * FROM users WHERE date_of_birth <  '1995-01-01';
SELECT * FROM users WHERE id >=10;

-- Working with NULL
SELECT * FROM users WHERE date_of_birth IS NULL;
SELECT * FROM users WHERE date_of_birth IS NOT NULL;

-- BETWEEN 
SELECT * FROM users WHERE salary BETWEEN 50000 AND 61000;

-- IN 
SELECT * FROM users WHERE gender IN ('MALE');
SELECT * FROM users WHERE salary IN (60000);

-- LIKE (Pattern Matching)

SELECT * FROM users WHERE name LIKE '%A';
SELECT * FROM users WHERE name LIKE 'A%';
SELECT * FROM users WHERE name LIKE '%i%';

-- AND / OR

SELECT * FROM users WHERE gender = 'Male' OR gender = 'FEMALE';
SELECT * FROM users WHERE gender = 'Male' AND salary > 65000;

-- ORDER BY

SELECT * FROM users ORDER BY salary ASC;
SELECT * FROM users ORDER BY id DESC;

-- LIMIT

SELECT * FROM users LIMIT 5;
SELECT * FROM users LIMIT 10 OFFSET 5;
SELECT * FROM users LIMIT 5,10;
SELECT * FROM users ORDER BY created_at DESC LIMIT 10;

SELECT * FROM users WHERE salary > 60000 ORDER BY created_at DESC LIMIT 5;
SELECT * FROM users ORDER BY salary DESC;
SELECT * FROM users WHERE salary BETWEEN 50000 AND 70000;

