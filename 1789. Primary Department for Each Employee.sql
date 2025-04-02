select employee_id , department_id 
from Employee p
where primary_flag = 'Y' or p.employee_id in(
    select e.employee_id 
    from Employee e
    group by e.employee_id 
    having count(e.employee_id)=1
)
