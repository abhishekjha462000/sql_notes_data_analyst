-- Full outer join 

-- Left join and right join are also called Left outer join and right outer join.
-- A full outer join is a combination of left join and right join.
-- We first take the rows where the condition matches, then we take remaning rows from both the tables which were
-- not matched and then add NULL to them.

CREATE TABLE one (id INTEGER);
CREATE TABLE two (id INTEGER);

INSERT INTO one (id) VALUES (1), (2), (3), (4), (5);
INSERT INTO two (id) VALUES (1), (2), (3), (6), (7);

SELECT one.id AS `one_id`, two.id AS `two_id`
FROM one 
LEFT JOIN two 
ON one.id = two.id

UNION

SELECT one.id AS `one_id`, two.id AS `two_id`
FROM one 
RIGHT JOIN two 
ON one.id = two.id
ORDER BY one_id, two_id;
