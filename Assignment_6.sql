Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014.

Ans:-
select * from Worker where month(JOINING_DATE) = 2 and year(JOINING_DATE) =2014

Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

Ans:-

SELECT salary,joining_date,department,email, COUNT(*)
FROM worker
GROUP BY salary,joining_date,DEPARTMENT,email
HAVING COUNT(*) > 1

Q-3. How to remove duplicate rows from Employees table.

Ans:-

WITH CTE AS
(SELECT *,R=RANK() OVER (ORDER BY worker_id,first_name,Last_name,Joining_date,department,email)
FROM Worker)
 
DELETE CTE
WHERE R IN (SELECT R FROM CTE GROUP BY R HAVING COUNT(*)>1)
