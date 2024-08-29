-- Self join
-- A Self join is a type of join in which a table is joined with itself. This means the table is treated as 2 seperate tables
-- with each row in the table being compared to every other row in the second table.

SELECT t1.name, t2.name AS `emergency contact` FROM sql_cx_live.users1 t1
INNER JOIN sql_cx_live.users1 t2
ON t1.emergency_contact = t2.user_id;