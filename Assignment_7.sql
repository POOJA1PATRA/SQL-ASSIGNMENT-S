Q-13. Write an SQL query to show only odd rows from a table.

Ans:-
Select * from worker where (WORKER_ID % 2) = 1

Q-14. Write an SQL query to clone a new table from another table.

Ans:-
if new table not available

SELECT * INTO worker3 FROM Worker

if available

INSERT INTO worker2
SELECT * FROM Worker