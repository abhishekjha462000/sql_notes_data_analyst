-- SELECT command

SELECT * FROM smartphones WHERE 1;
SELECT * FROM smartphones; -- This is the same as above
SELECT * FROM campusx.smartphones; -- This is also the same as the above 2


-- SELECTING specific columms
SELECT brand_name FROM campusx.smartphones;
SELECT model, battery_capacity, os FROM campusx.smartphones;