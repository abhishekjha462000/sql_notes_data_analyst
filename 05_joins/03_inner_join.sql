-- Inner join 

-- In SQL, an inner join is type of join which combines data from 2 or more tables based on
-- a specified condition. The inner join returns only the rows that satisfy the specified condition.

CREATE TABLE one (id INTEGER NOT NULL);
CREATE TABLE two (id INTEGER NOT NULL);

INSERT INTO one (id) VALUES (1), (-22), (33), (-4), (50);
INSERT INTO two (id) VALUES (2), (-2), (56), (-40), (0);

SELECT one.id, two.id FROM one INNER JOIN two ON one.id < two.id
ORDER BY one.id, two.id;

DROP TABLE IF EXISTS one;
DROP TABLE IF EXISTS two;

