select manager.name as name
from Employee manager 
left join Employee emp 
on manager.id = emp.managerId
group by manager.name , manager.id
having count(manager.id)>=5
