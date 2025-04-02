select s.product_id,year as first_year ,quantity,price 
from Sales s
where year = (select min(y.year) from Sales y where y.product_id=s.product_id )
