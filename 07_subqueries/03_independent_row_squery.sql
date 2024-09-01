-- Row Subquery (One col multiple rows)

-- Find the users who never ordered
USE zomato;
SELECT name FROM users WHERE user_id NOT IN (SELECT DISTINCT(user_id) FROM orders);

-- Find all movies made by top 3 directors (in terms of total gross income)
USE mydb;
-- Limit clause is not supported in subqueries
SELECT name FROM movies WHERE director IN (SELECT director FROM movies ORDER BY gross DESC LIMIT 0, 3);

-- common table expression approach
WITH top_directors AS (SELECT director FROM movies ORDER BY gross DESC LIMIT 0, 3)
SELECT name FROM movies WHERE director IN (SELECT * FROM top_directors);


-- Find all movies of all the actors whose filmography average rating > 8.5 (take 25000 as the cutoff votes)
SELECT *
FROM movies 
WHERE star IN (
				SELECT star
				FROM movies 
				WHERE votes > 25000 
				GROUP BY star
				HAVING AVG(score) > 8.5
);