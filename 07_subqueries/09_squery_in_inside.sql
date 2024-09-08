-- subquery in INSERT

-- Create a new table called as loyal_customers with the id and name of those customers
-- who have ordered for more than 3 times. The table should contains three columns namely
-- id, name and money.

USE zomato;
CREATE TABLE loyal_customers (
	id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    money INTEGER
);


-- When we use subquery inside a INSIDE clause, we do not use VALUES clause
INSERT INTO loyal_customers(id, name)
SELECT t1.user_id, name FROM (SELECT user_id, COUNT(*) 
FROM orders
GROUP BY user_id
HAVING COUNT(*) > 3) t1
INNER JOIN users t2
ON t1.user_id = t2.user_id;

SELECT * FROM loyal_customers;

