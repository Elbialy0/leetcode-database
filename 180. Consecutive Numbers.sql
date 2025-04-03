select distinct num as  ConsecutiveNums
from Logs l
where ((id+2)*(id+3)/2)-((id-1)*(id)/2) = (select sum(c.id) from Logs c where c.id <=l.id+2 and c.id>l.id-1 and c.num=l.num)
