/* Write your T-SQL query statement below */
select s.user_id ,    ROUND(
        AVG(
            IIF(c.action = 'confirmed', 1.00, 0)
        ), 
        2
    ) confirmation_rate
from Signups s left join Confirmations c 
on s.user_id = c.user_id 

group by s.user_id
