select contest_id , round(((count( c.user_id)*100.0)/(select count(user_id)from Users)),2) as percentage
from Users u inner join Register c
on u.user_id = c.user_id
group by contest_id
order by percentage desc , contest_id asc
