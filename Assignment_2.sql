1)
SELECT SUBSTRING( FIRST_NAME, 1, 3 ) FROM WORKER;

2)

SELECT CHARINDEX('a',FIRST_NAME) from worker where FIRST_NAME = 'Amitabh';

3)select w.first_name, w.department,w.salary from worker w  
  join (select max(salary) as maxsal, department as dept  
          from worker group by department) d  
    on d.dept = w.department and w.salary = d.maxsal; 

