-- UPDATE clause

-- If this is not set, then SQL will prevent us from updation.
SET SQL_SAFE_UPDATES = 0;

-- Before updating anything in the table, always run a SELECT query to see it.
SELECT * FROM smartphones WHERE brand_name = 'oneplus';

-- Finally update the brand_name
UPDATE smartphones
SET
	brand_name = '1+'
WHERE 
	brand_name = 'oneplus';
    
    
SELECT * FROM smartphones WHERE brand_name = '1+';