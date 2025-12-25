USE my_db;
SELECT * FROM users;
SELECT * FROM addresses;

-- INNER JOIN (ONLY MATCHING COLUMNS)

SELECT users.name ,users.gender, addresses.city ,addresses.pincode
FROM users
INNER JOIN addresses ON users.id = addresses.user_id; 

-- LEFT JOIN ( RETURNS ALL LEFT TABLE WITH MATCHING THE RIGHT TABLE COLUMNS )
SELECT users.name,addresses.city 
FROM users
LEFT JOIN addresses ON users.id = addresses.user_id;

-- RIGHT JOIN ( OPPOSITE TO LEFT JOIN )

SELECT users.name,addresses.city 
FROM users
RIGHT JOIN addresses ON users.id = addresses.user_id;