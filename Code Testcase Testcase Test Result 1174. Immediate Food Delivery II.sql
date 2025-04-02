select round ((count(delivery_id)*100)/(select count(distinct customer_id) from Delivery),2) as immediate_percentage  
from Delivery x
where order_date = customer_pref_delivery_date and ( (select count(delivery_id) from Delivery d where x.order_date > d.order_date and x.customer_id = d.customer_id )=0  ) 
