Q-19. Write an SQL query to determine the 5th highest salary without using TOP or limit method.

Ans:-

with t1 as(
select *, Row_Number() over (order by salary desc) as rownumber from worker
)
select *
from t1 where rownumber = 5

Q-20. Write an SQL query to fetch the list of employees with the same salary.

SELECT First_name
FROM worker 
WHERE Salary IN (
    SELECT Salary
    FROM worker
    GROUP BY Salary
    HAVING COUNT(*) > 1