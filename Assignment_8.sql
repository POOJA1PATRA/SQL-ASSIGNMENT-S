Q-15. Write an SQL query to fetch intersecting records of two tables.

Ans:-

SELECT email FROM worker
INTERSECT
SELECT email FROM worker3 ORDER BY email;


Q-16. Write an SQL query to show records from one table that another table does not have.

Ans:-

SELECT email FROM worker
EXCEPT
SELECT email FROM worker3 ORDER BY email;