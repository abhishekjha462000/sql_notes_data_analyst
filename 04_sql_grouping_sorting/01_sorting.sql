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

