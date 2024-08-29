-- Find all profitable orders

USE flipkart;

SELECT order_id, SUM(profit) AS `profit` FROM order_details
GROUP BY order_id
HAVING profit > 0;


-- Find the customer who has placed maximum number of orders
SELECT name FROM users u 
INNER JOIN orders o 
ON u.user_id = o.user_id
GROUP BY name
ORDER BY COUNT(*) DESC LIMIT 0,1;


-- Which is the most profitable vertical
SELECT vertical, SUM(profit) AS `profit` FROM category c
INNER JOIN order_details o
ON c.category_id = o.category_id
GROUP BY vertical
ORDER BY profit DESC LIMIT 0, 1;


-- Which is the most profitable state
SELECT state FROM orders o 
INNER JOIN users u 
ON o.user_id = u.user_id
INNER JOIN order_details od
ON o.order_id = od.order_id
GROUP BY state 
ORDER BY SUM(profit) 
DESC LIMIT 0, 1;

