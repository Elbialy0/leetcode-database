with sol as(
    select * , dense_rank() over ( order by salary desc) as r
    from Employee
) 
select top 1 salary as  SecondHighestSalary 
from sol 
where r =2
union all 
select null
where (select count(r) from sol where r = 2 ) = 0
