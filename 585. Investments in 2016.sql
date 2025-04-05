select round(sum(tiv_2016),2) as tiv_2016
from Insurance i
where 1 = (select count(a.pid) from Insurance a where (i.lat = a.lat and i.lon = a.lon)) 
and 1<(select count(a.tiv_2015) from Insurance a where a.tiv_2015 = i.tiv_2015)
