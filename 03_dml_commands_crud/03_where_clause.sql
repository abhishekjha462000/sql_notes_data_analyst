-- Filtering rows
-- In order to filter rows we use the WHERE clause in conjunction with the SELECT clause.

SELECT * FROM smartphones;

-- Find all smartphones whose brand is 'samsung'
SELECT * FROM smartphones WHERE brand_name = 'samsung';

-- Find all smartphones where price is > 50000
SELECT * FROM smartphones WHERE price > 50000;

-- Find all the smartphones in the price range of 10000 and 20000

-- Method I
SELECT * FROM smartphones WHERE price > 10000 AND price < 20000;

-- Method II (BETWEEN method)
SELECT * FROM smartphones WHERE price BETWEEN 10000 AND 20000;


-- Find all smartphones with rating > 80 and price < 25000
SELECT * FROM smartphones WHERE rating > 80 AND price < 25000;