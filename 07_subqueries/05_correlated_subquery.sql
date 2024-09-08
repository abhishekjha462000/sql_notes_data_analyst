-- Correlated subqueries are those squery in which the execution of the inner query is dependent on outer query.

-- Find all the movies that have a rating higher than the average rating of the same genre
SELECT * FROM movies m1
WHERE score > (
					SELECT AVG(score) 
                    FROM movies m2 
                    WHERE m2.genre = m1.genre
				);
                

-- Find the favorite food of each customer
USE zomato;
SELECT * FROM users;
SELECT * FROM restaurants;
SELECT * FROM orders;
SELECT * FROM order_details;

WITH my_cte AS 
(
	SELECT name, f_name, COUNT(*) AS `count` 
	FROM users u 
	INNER JOIN orders o 
	ON u.user_id = o.user_id 
	INNER JOIN order_details od 
	ON o.order_id = od.order_id 
	INNER JOIN foods f 
	ON od.f_id = f.f_id
	GROUP BY name, f_name 
	ORDER BY count DESC
)
SELECT name, f_name 
FROM my_cte m1 WHERE count = (SELECT MAX(count) FROM my_cte m2 WHERE m2.name = m1.name);