/* Write your T-SQL query statement below */
select p.product_id ,(case when change_date>'2019-08-16' then 10 else new_price end) as price 
from Products p left outer join (select product_id , max(change_date) as d from Products where 
change_date<='2019-08-16' group by product_id  ) as h
on p.product_id = h.product_id 
where p.change_date = h.d or (change_date>'2019-08-16' and
  (select count(c.product_id) from Products c where p.product_id = c.product_id and c.change_date<='2019-08-16' )=0 and
  change_date = (select max(c.change_date) from Products c where p.product_id = c.product_id))
