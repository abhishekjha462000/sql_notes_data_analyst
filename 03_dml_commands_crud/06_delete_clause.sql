-- DELETE clause

-- delete all the smartphones where price > 2 lakh

SELECT * FROM smartphones WHERE price > 200000;

DELETE FROM smartphones WHERE price > 200000;


-- delete all the smartphones where primary_camera_rear > 150 and brand_name is 'samsung'

-- first see the data to be deleted
SELECT * FROM smartphones WHERE primary_camera_rear > 100 AND brand_name = 'samsung';

-- now delete the data
DELETE FROM smartphones
WHERE primary_camera_rear > 100 AND brand_name = 'samsung';

-- now again see the data to double verify
SELECT * FROM smartphones WHERE primary_camera_rear > 100 AND brand_name = 'samsung';


