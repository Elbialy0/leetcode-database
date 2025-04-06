/* Write your T-SQL query statement below */
select d.name as Department , e.name as Employee , salary as Salary
from (
select *, DENSE_RANK() over (PARTITION  by departmentId order by salary desc ) as p
from Employee ) as e inner join Department d 
on e.departmentId = d.id
where p =1 or p = 2 or p=3
