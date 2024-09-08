-- Sub query inside the DELETE clause

-- Delete all the customers who have never ordered
-- This works
DELETE FROM users
WHERE user_id IN (SELECT * FROM (SELECT user_id FROM users 
WHERE user_id NOT IN (SELECT DISTINCT(user_id) FROM orders)) k);

-- This does not work as we can not use the same table in the FROM clause on which we are performing updation
DELETE FROM users
WHERE user_id IN (SELECT user_id FROM users 
WHERE user_id NOT IN (SELECT DISTINCT(user_id) FROM orders));


SET SQL_SAFE_UPDATES = 0;

SELECT * FROM users;