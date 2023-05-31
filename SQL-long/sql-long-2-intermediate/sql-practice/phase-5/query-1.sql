-- Find the first owner that has a last name containing the lowercase letter "r"
-- Your code here
SELECT id,first_name, last_name FROM owners
WHERE last_name LIKE '%r%'
LIMIT 1;