-- subquery in FROM

-- Display average rating of all the restaurants
USE zomato;

SELECT r_name, average_rating 
FROM 
(
	SELECT r_id, ROUND(AVG(restaurant_rating), 2) AS `average_rating` 
	FROM orders 
	WHERE restaurant_rating NOT IN ('')
	GROUP BY r_id 
	ORDER BY average_rating DESC
) t1
INNER JOIN restaurants t2
ON t1.r_id = t2.r_id;