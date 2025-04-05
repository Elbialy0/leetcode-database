with bus as (
    select distinct visited_on , sum(amount) over (order by visited_on) as amount
    from Customer
),
 first_part as(
select  visited_on , amount , round(amount*1.0/7,2) as average_amount 
from bus
order by visited_on
OFFSET 6 ROWS
FETCH NEXT 1 ROWS ONLY
),


 second_part as(
select distinct b.visited_on as visited_on, b.amount-c.amount as amount, round((b.amount-c.amount)*1.0/7,2) as average_amount 
from bus b inner join bus c
on b.visited_on = dateadd(day,7,c.visited_on))

select * from first_part 
union all 
select * from second_part
