USE my_db;


-- UPDATE users SET referred_by_id = 1 WHERE id IN (2, 3,7,8);
-- UPDATE users SET referred_by_id = 2 WHERE id = 4; 

-- SELECT * FROM users;

SELECT
a.id, 
a.name AS user_name,
b.name AS referred_by
FROM users a
INNER JOIN b ON a.referred_by_id = b.id;