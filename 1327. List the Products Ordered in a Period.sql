select * from(
select product_name , sum(unit) as unit
from Products p left join Orders o 
on p.product_id = o.product_id 
where month(order_date) = 2 and year(order_date) = 2020
group by product_name ) a
 where unit >= 100
