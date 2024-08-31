CREATE DATABASE IF NOT EXISTS zomato;

-- Select a particular database
USE zomato;

SHOW TABLES;

SELECT * FROM users;


-- Find the number of rows in a table
SELECT COUNT(*) FROM users;


-- Select random 5 rows from a data
SELECT * FROM users ORDER BY RAND() LIMIT 0, 5;


-- Find NULL values in orders 
SELECT * FROM orders WHERE restaurant_rating IS NULL;


-- Find the # of orders placed by each customer
SELECT name, COUNT(*) FROM users u
INNER JOIN orders o
ON u.user_id = o.user_id
GROUP BY name;


-- Find restaurant with most number of menu items
SELECT r_name, COUNT(DISTINCT menu_id) AS `num_menu_items` 
FROM menu m 
INNER JOIN restaurants r
ON m.r_id = r.r_id
GROUP BY r_name
ORDER BY num_menu_items DESC;


-- Find number of votes and average rating for all the restaurants
SELECT 
	r_name, 
	COUNT(*) AS `#votes`, 
	ROUND(AVG(restaurant_rating), 2) AS `avg_rating` 
FROM orders
INNER JOIN restaurants
ON orders.r_id = restaurants.r_id
WHERE restaurant_rating NOT IN ('')
GROUP BY r_name
ORDER BY avg_rating DESC;


--  Find the food that is being sold at most number of restaurants
SELECT f_name, COUNT(DISTINCT r_id) AS `num_restaurants` FROM foods f 
INNER JOIN menu m 
ON f.f_id = m.f_id
GROUP BY f_name
ORDER BY num_restaurants DESC
LIMIT 0, 1; -- choco lava cake and Rice Meal


-- Find restaurant with max revenue in a given month
SELECT 
	r_name, 
	MONTHNAME(STR_TO_DATE(date, '%d-%m-%Y')) AS `month`,
    SUM(amount) AS `revenue`
FROM orders 
INNER JOIN restaurants
ON orders.r_id = restaurants.r_id
GROUP BY r_name, month
ORDER BY month , revenue DESC;


-- Find customers who have never ordered
SELECT u.name 
FROM users u 
LEFT JOIN orders o
ON u.user_id = o.user_id
WHERE o.user_id IS NULL;

-- Second Approach
SELECT name FROM users
EXCEPT
SELECT name FROM users INNER JOIN orders ON users.user_id = orders.user_id;


-- Find the favorite food of each customer
WITH my_cte AS (SELECT name, f_name, COUNT(*) AS `times_ordered` FROM users u
INNER JOIN orders o
ON u.user_id = o.user_id
INNER JOIN order_details od
ON o.order_id = od.order_id
INNER JOIN foods f
ON od.f_id = f.f_id
GROUP BY name, f_name
ORDER BY name, times_ordered DESC)
SELECT m1.name, f_name 
FROM my_cte m1
WHERE times_ordered = (
						SELECT MAX(times_ordered) 
                        FROM my_cte m2 
                        WHERE m2.name = m1.name
					);