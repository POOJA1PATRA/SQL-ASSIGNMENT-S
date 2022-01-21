Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

Ans:-select rtrim(first_name) from worker;

Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

Ans:-Select distinct len(DEPARTMENT) as dept_len from Worker;

Q-3. Write an SQL query to fetch nth max salaries from a table.

Ans:-

WITH RESULT AS  
(  
    SELECT SALARY,  
           DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSERANK  
    FROM worker  
)  
SELECT TOP 1 SALARY  
FROM RESULT  
WHERE DENSERANK = 1