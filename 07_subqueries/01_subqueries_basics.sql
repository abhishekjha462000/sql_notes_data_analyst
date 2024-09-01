-- Subquery

A Subquery is a query within another query. It is always a SELECT statement inside another SELECT, INSERT, UPDATE or DELETE statement.
The subquery is executed first, and then its results is used as a parameter or condition for the outer query.


-- Types of subquery
We can classify a subquery on the following 2 basis:
1. On the basis of returned data
2. On the basis of execution

1. On the basis of returned data
	In this we can classify the Squery into 3 types
    a. Scalar Squery - The output of this sub-query is a single value.
    b. Row Squery - The output of this sub-query is a column i.e multiple value of same type. For example, genres
    c. Tabular Squery - The output of this sub-query is a table.
    
2. On the basis of execution(working)
	In this we can classify the Squery into 2 types
    a. Independent Squery - Inner query can work independent of the outer query.
		Example:
		SELECT movie FROM movies WHERE rating = (SELECT MAX(rating) FROM movies);
    b. Correlated Squery - Inner query is dependent on the outer query.
    
-- Where can subqueries be used?

We can use Squery inside a SELECT, INSERT, UPDATE or DELETE statement. 
Also, We can use Squery inside a SELECT, WHERE, HAVING, or FROM inside a SELECT statement.
So, in total we can use it in 7 places.

i. with SELECT INSIDE SELECT
ii. with FROM INSIDE SELECT
iii. with WHERE INSIDE SELECT
iv. with HAVING INSIDE SELECT
v. with INSERT
vi. with UPDATE
vii. WITH DELETE

    