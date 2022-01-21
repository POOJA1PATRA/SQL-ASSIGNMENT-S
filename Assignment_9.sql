Q-17.  Write an SQL query to show the top n (say 10) records of a table.

Ans:-

SELECT TOP 10 * FROM Worker;

Q-18. Write an SQL query to determine the nth (say n=5) highest salary from a table.

SELECT TOP 5 salary
FROM (
      SELECT DISTINCT TOP 5 salary
      FROM worker
      ORDER BY salary DESC
      ) a
ORDER BY salary