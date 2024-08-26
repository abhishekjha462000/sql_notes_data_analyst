-- SQL functions
-- In SQL, we have 2 type of functions => user defined function and built-in functions.

-- In buit-in functions, we again have 2 types of functions: scalar function and aggregate function.

-- Today we would be learning only the basics of built in functions. The scaler functions are those functions which 
-- return a value for each row. For example the round() function is an example of built-in scaler function. The aggregate
-- functions are those which return a single value for the entire column. The examples are MAX(), MIN(), AVG() etc.alter

SELECT * FROM smartphones;

SELECT MAX(price) FROM smartphones;
SELECT MIN(price) FROM smartphones;
SELECT AVG(price) FROM smartphones;
SELECT STDDEV(price) FROM smartphones; -- standard deviation
SELECT SUM(price) FROM smartphones;

-- Scaler functions
SELECT SQRT(price) FROM smartphones;
SELECT ROUND(price/10, 2) FROM smartphones;
SELECT ABS(price-50000) FROM smartphones;
SELECT CEIL(price/49) FROM smartphones;
SELECT FLOOR(price * price / 56700) AS dummy FROM smartphones;


-- Question: Find the price of the costliest samsung phone
SELECT MAX(price) FROM smartphones WHERE brand_name = 'samsung';

-- Question: Find the average rating of the apple phone
SELECT AVG(price) FROM smartphones WHERE brand_name = 'apple';

-- Question: Find the number of 1+ phones
SELECT COUNT(*) AS `number_of_1+_smartphones` FROM smartphones WHERE brand_name = '1+';

-- Question: Find the number of brands in our dataset
SELECT COUNT(DISTINCT(brand_name)) FROM smartphones;

-- Question: Find the standard deviation of screen sizes
SELECT ROUND(STD(screen_size), 2) AS screen_size_std FROM smartphones;

