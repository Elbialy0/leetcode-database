select name , unique_id 
from Employees x left outer join EmployeeUNI y
on x.id = y.id
