select name
, bonus 

from Employee x left outer join Bonus y 

on x.empId = y.empId
where bonus < 1000 or bonus is null
