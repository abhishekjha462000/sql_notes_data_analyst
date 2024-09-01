--  Find the most profitable movie of each year
SELECT * FROM movies
WHERE (year, gross - budget) IN (
									SELECT year, MAX(gross - budget)
									FROM movies 
									GROUP BY year
);

-- chat gpt approach for table subquery (This is actually good and faster)
SELECT m.name, m.year, m.gross - m.budget AS `profit` 
FROM movies m 
INNER JOIN
(SELECT year, MAX(gross - budget) AS `max_profit` FROM movies GROUP BY year) n
ON m.year = n.year AND m.gross - m.budget = n.max_profit;


-- Find the highest rated movie of each genre votes cutoff by 25000
SELECT name FROM movies WHERE (genre, score) IN (SELECT genre, MAX(score)
FROM movies
WHERE votes > 25000
GROUP BY genre) AND votes > 25000;

-- chat gpt good approach
SELECT m.name
FROM movies m
JOIN (
    SELECT genre, MAX(score) AS max_score
    FROM movies
    WHERE votes > 25000
    GROUP BY genre
) g ON m.genre = g.genre AND m.score = g.max_score
WHERE m.votes > 25000;
