USE my_db;
--  1. UNIQUE Constraint
-- ALTER TABLE users
-- ADD CONSTRAINT unique_email UNIQUE (email);
SELECT * FROM users;

ALTER TABLE users ADD CONSTRAINT chk_dob CHECK (date_of_birth < '2000-01-01' );
