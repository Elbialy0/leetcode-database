select today.id as Id
from Weather today , Weather yesterday
where datediff(day,yesterday.recordDate,today.recordDate)= 1 and today.temperature > yesterday.temperature 
