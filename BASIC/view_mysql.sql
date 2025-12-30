USE my_db;

-- CREATE VIEW high_salary_users AS
-- SELECT id,name,salary 
-- FROM users 
-- WHERE salary > 70000;

SELECT * FROM high_salary_users;

UPDATE users SET salary = 50000
WHERE id = 9;

SELECT * FROM high_salary_users;
SELECT * FROM users;


-- DROP VIEW high_salary_users;