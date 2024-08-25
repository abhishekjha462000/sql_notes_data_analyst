-- SELECT command
SELECT * FROM smartphones WHERE 1;
SELECT * FROM smartphones; -- This is the same as above
SELECT * FROM campusx.smartphones; -- This is also the same as the above 2


-- SELECTING specific columms (FILTERING COLUMNS)
SELECT brand_name FROM campusx.smartphones;
SELECT model, battery_capacity, os FROM campusx.smartphones;


-- ALIASING (Renaming Columns)
SELECT * FROM smartphones;
SELECT brand_name AS company, battery_capacity AS mAh FROM smartphones;


-- Mathematical Calculation USING SELECT
SELECT SQRT(49);
-- pixel per inch calculation
SELECT ROUND(SQRT((resolution_width * resolution_width) + (resolution_height * resolution_height)) / screen_size, 2) AS ppi
FROM smartphones;

