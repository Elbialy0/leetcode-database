select distinct  customer_id 
from Customer x 
where (select count(distinct y.product_key )from Customer y where x.customer_id=y.customer_id)
= (select count(product_key) from Product)
