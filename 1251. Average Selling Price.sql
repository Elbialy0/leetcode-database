select p.product_id ,COALESCE(ROUND(SUM(p.price * u.units * 1.0) / SUM(u.units),2),0) as average_price
from Prices p left join UnitsSold u 
on p.product_id = u.product_id 
and purchase_date between start_date and end_date
group by p.product_id
