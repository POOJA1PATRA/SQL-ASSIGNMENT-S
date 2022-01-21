Q-1. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.

Ans:-
select * from worker where first_name not in ('satish' ,'vipul');

Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

Ans:-
Select * from Worker where FIRST_NAME like '_____h';

Q-3. Write a query to validate Email of Employee.



