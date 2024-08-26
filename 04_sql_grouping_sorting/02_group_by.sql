-- grouping data

-- Question 1: Group smartphones by brand and get the count, average price, max rating, average screen size and average battery capacity
SELECT 
		brand_name, 
		COUNT(*) AS `total_num_of_phones`, 
		ROUND(AVG(price), 2) AS `average_price`, 
        MAX(rating) AS `max_rating`, 
        ROUND(AVG(screen_size), 2) AS `average_screen_size`, 
        ROUND(AVG(battery_capacity), 2) AS `average_battery_capacity`  
FROM smartphones
GROUP BY brand_name;


-- Question 2: Group smartphones by whether they have an NFC and get the average price and rating
SELECT has_nfc, ROUND(AVG(price), 2) AS `average_price`, ROUND(AVG(rating), 2) AS `average_rating` 
FROM smartphones GROUP BY has_nfc;


-- Question 3: Group smartphones by the extended memory avaliable and get the average price
SELECT extended_memory_available, ROUND(AVG(price), 2) AS `average_price` FROM smartphones GROUP BY extended_memory_available;


-- Question 4: Group smartphones by the brand and the processor brand and get the count of models and the average primary camera resolution (rear)
SELECT 
		brand_name, 
		processor_brand, 
        COUNT(*) AS `#nums`, 
        ROUND(AVG(primary_camera_rear), 2) AS `average_primary_camera_resolution` 
FROM smartphones 
GROUP BY brand_name, processor_brand
ORDER BY brand_name, processor_brand;


-- Question 5: Find top 5 most costly phone brands
SELECT brand_name FROM smartphones
GROUP BY brand_name
ORDER BY ROUND(AVG(price), 2) DESC LIMIT 0, 5;


-- Question 6: Find brand makes the smallest screen smartphones
SELECT brand_name, ROUND(AVG(screen_size), 2) AS `average_screen_size` FROM smartphones
GROUP BY brand_name
ORDER BY `average_screen_size` ASC LIMIT 0, 1;


-- Question 7: Average price of 5g phones Vs Average price of non-5g phones
SELECT has_5g, ROUND(AVG(price), 2) AS `average_price` 
FROM smartphones 
GROUP BY has_5g;


-- Question 8: Group phones by the brand and find the brand with the highest numbers of models that have both nfc and ir blaster
SELECT brand_name, COUNT(*) FROM smartphones WHERE has_ir_blaster = 'True' AND has_nfc = 'True'
GROUP BY brand_name ORDER BY COUNT(*) DESC;


-- Question 9: Find all samsung 5g enabled phones and find out the average price for NFC and non-NFC phones
SELECT has_nfc, ROUND(AVG(PRICE), 2) AS `average_price` FROM smartphones WHERE brand_name = 'samsung' AND has_5g = 'True'
GROUP BY has_nfc ORDER BY has_nfc;


