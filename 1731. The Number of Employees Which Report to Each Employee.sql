select x.employee_id , x.name , count(e.reports_to) as reports_count ,round(avg(e.age*1.0),0)as average_age 
from Employees e inner join Employees x 
on  e.reports_to = x.employee_id
group by x.employee_id , x.name
order by x.employee_id
