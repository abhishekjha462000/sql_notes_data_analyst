-- query execution order (F, J, W, G, H, S, D, O)
-- Trick to remember: Far Ji Wada {Krne Waala} Ganda Harami SDO


-- Find brands which sell phones > 50000
SELECT DISTINCT(brand_name) AS brand FROM campusx.smartphones WHERE price > 50000;
-- In the above query, the order of execution is FROM --> WHERE --> SELECT --> DISTINCT.


-- IN and NOT IN operator
-- Find all the smartphones where processor brand is 'snapdragon', 'exynos' or 'bionic'.
SELECT * FROM smartphones WHERE processor_brand IN ('snapdragon', 'exynos', 'bionic');