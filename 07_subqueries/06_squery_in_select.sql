-- using subquery inside select statement

-- Get the percentage of votes for each movie compared to the total number of votes
SELECT 
votes, 
votes / (SELECT SUM(votes) FROM movies) * 100 AS `percentage` 
FROM movies;


-- Display all movie name names, genre, score and avg(score) of genre
SELECT name, 
genre, score, 
(SELECT ROUND(AVG(score), 2) FROM movies m2 WHERE m2.genre = m1.genre) AS `avg_score_genre`
FROM movies m1;
-- This is an inefficient way because it will calculate the average of each genre for each row


-- Efficient way [very fast in comparison to above]
SELECT m.name, m.genre, s.avg_score_genre FROM (SELECT genre, AVG(score) AS `avg_score_genre` FROM movies
GROUP BY genre) s
INNER JOIN movies m
ON m.genre = s.genre;