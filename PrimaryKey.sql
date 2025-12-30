USE my_db;
ALTER TABLE users AUTO_INCREMENT = 100;


-- for the delete a parent will automatically delete the child also 
-- because of the cascade we used while creating the table
DELETE FROM users WHERE id = 2;
SELECT * FROM users;
SELECT * FROM addresses;