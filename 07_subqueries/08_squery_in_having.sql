-- subquery in having

--  Find genres having avg_score > avg_score of all movies
USE mydb;
SELECT * FROM movies;

SELECT genre, ROUND(AVG(score), 2) AS `average_score` 
FROM movies 
GROUP BY genre
HAVING average_score > (SELECT AVG(score) FROM movies)
ORDER BY average_score DESC;
