-- Left Join

-- A Left join, also known as a left outer join is a type of SQL join operation that returns all the rows from the left table
-- (also known as the first table) and matching rows from the right table (also known as the second table). If there are no matching
-- rows in the right table, the result will contain NULL values in the columns that come from the right table.

CREATE TABLE one (id INTEGER);
CREATE TABLE two (id INTEGER);

INSERT INTO one (id) VALUES (1), (2), (3), (4), (5);
INSERT INTO two (id) VALUES (1), (2), (3), (NULL);

SELECT one.id, two.id 
FROM one 
LEFT JOIN two 
ON one.id < two.id
ORDER BY one.id, two.id;


DROP TABLE IF EXISTS one;
DROP TABLE IF EXISTS two;
