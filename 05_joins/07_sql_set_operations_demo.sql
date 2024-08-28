SELECT * FROM sql_cx_live.person1;
SELECT * FROM sql_cx_live.person2;


-- UNION
SELECT * FROM sql_cx_live.person1
UNION -- all the members and no repetition
SELECT * FROM sql_cx_live.person2;

-- UNION ALL
SELECT * FROM sql_cx_live.person1
UNION ALL -- all the members and charlie twice
SELECT * FROM sql_cx_live.person2;

-- INTERSECT
SELECT * FROM sql_cx_live.person1
INTERSECT -- only charlie remained
SELECT * FROM sql_cx_live.person2;

-- EXCEPT
SELECT * FROM sql_cx_live.person1
EXCEPT -- charlie removed
SELECT * FROM sql_cx_live.person2;

