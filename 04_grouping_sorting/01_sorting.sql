-- sorting
-- In SQL, we sort the final result of our query using the ORDER BY clause.
-- We specify the column(s) by which we want to sort the query result

-- Question: Find the top 5 samsung phones with biggest screen size
SELECT model, screen_size FROM smartphones WHERE brand_name = 'samsung'
ORDER BY screen_size DESC LIMIT 0,5;


-- Question: Find the top 3 smartphones with maximum number of cameras
SELECT model, num_front_cameras + num_rear_cameras AS `total_cameras` FROM smartphones
ORDER BY total_cameras DESC LIMIT 0,3;


-- Question: Sort data on the basis of pixels per inch in descending order
SELECT * FROM smartphones
ORDER BY ROUND(SQRT(resolution_width * resolution_width + resolution_height * resolution_height)/screen_size, 2) DESC;


-- Question: Find the phone with second largest battery capacity
SELECT model, battery_capacity FROM smartphones
ORDER BY battery_capacity DESC LIMIT 1,1;


-- Question: Find the phone with second lowest battery capacity
SELECT model, battery_capacity FROM smartphones
ORDER BY battery_capacity ASC LIMIT 1,1;


-- Question: Find the name and rating of the worst rated apple smartphone
SELECT model, rating FROM smartphones WHERE brand_name = 'apple'
ORDER BY rating ASC LIMIT 0,1;


-- Question: Sort the phones alphabetically and then on the basis of rating in descending order
SELECT model, rating FROM smartphones ORDER BY model ASC, rating DESC;


-- Question: Sort the phones alphabetically and then on the basis of price in ascending order
SELECT model, price FROM smartphones ORDER BY model ASC, price DESC;

