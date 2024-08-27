-- cross joins
A cross join is just the cartesian product of two tables. In other words, it returns all possible combinations of rows from 2 tables.

Cross joins are not used commonly but they can be useful in certain situations such as generating test data or exploring all possible combinations of items in a product catalogue.

CAUTION: We need to be cautious while using cross joins as they can generate a very huge virtual table which could be resource-intensive and slow to process.

Illustrative algorithm
for each row in r1:
	for each row in r2:
		add combined row to result