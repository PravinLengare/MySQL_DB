USE my_db;
set autocommit = 0;
-- SELECT * FROM users;
DELETE FROM users WHERE id = 3;
ROLLBACK;
SELECT * FROM users;

