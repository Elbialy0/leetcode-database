with sol as ( 
    select sell_date , product , row_number() over (partition by sell_date , product order by product) as a
    from Activities 
)
  

select sell_date , count(product) as num_sold, string_agg(product , ',') as products
from sol 
where a = 1 
group by sell_date
