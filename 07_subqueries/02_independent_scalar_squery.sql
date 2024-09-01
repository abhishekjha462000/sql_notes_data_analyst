USE mydb;
SELECT * FROM movies;


-- Select the movie which has made most profit (scalar subquery)
SELECT * FROM movies 
WHERE gross-budget = (SELECT MAX(gross-budget) FROM movies);

-- Approach 2 (faster on larger dataset)
SELECT * FROM movies ORDER BY gross-budget DESC LIMIT 0,1;


-- Find how many movies have a rating > average of all the movie ratings. (Find the count of above average movies)
SELECT COUNT(*) FROM movies WHERE score > (SELECT AVG(score) FROM movies);


-- Find the highest rated movie of 2000
SELECT name FROM movies WHERE year = 2000 AND score = (SELECT MAX(score) FROM movies WHERE year = 2000);


-- Find the highest rated movie among the movies where number of votes is greater than dataset's average number of votes
SELECT * FROM movies 
WHERE votes > (SELECT AVG(votes) FROM movies)
ORDER BY score DESC LIMIT 0,1;

-- Approach 2
SELECT * FROM movies 
WHERE score = (
				SELECT MAX(score) FROM movies 
                WHERE votes > (
								SELECT AVG(votes) FROM movies
							  )
			  );