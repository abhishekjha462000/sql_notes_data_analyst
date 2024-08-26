-- having clause
-- The having clause is the same as the where clause. However, the only difference is that it is done after the grouping of data has been done
-- This is often done in conjunction with a condition on some aggregate function.


-- Question 1: Find the average rating of smartphone brands which have more than 20 phones
SELECT brand_name, ROUND(AVG(rating), 2) AS `average_rating` FROM smartphones
GROUP BY brand_name HAVING COUNT(*) > 20 ORDER BY COUNT(*);


-- Question 2: Find the top 3 brands with the highest average ram that have a refresh rate of at least 90 Hz and fast charging available and dont consider brands which have less than 10 phones
SELECT brand_name, ROUND(AVG(ram_capacity), 2) AS `average_ram_capacity` 
FROM smartphones 
WHERE refresh_rate >= 90 AND fast_charging_available = 1
GROUP BY brand_name 
HAVING COUNT(*) >= 10 
ORDER BY `average_ram_capacity` 
DESC LIMIT 0, 3;


-- Question 3: Find the average price of all the smartphone brands with average rating > 70 and number of phones > 10 among all the 5g enabled phones
SELECT brand_name, ROUND(AVG(price), 2) AS `average_price`
FROM smartphones 
WHERE has_5g = 'True'
GROUP BY brand_name
HAVING AVG(rating) > 70 AND COUNT(*) > 10
ORDER BY average_price;



