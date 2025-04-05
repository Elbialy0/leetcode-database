/* Write your T-SQL query statement below */
WITH bus AS (
    SELECT requester_id, COUNT(accepter_id) AS b
    FROM RequestAccepted 
    GROUP BY requester_id

    UNION ALL

    SELECT accepter_id AS requester_id, COUNT(requester_id) AS b
    FROM RequestAccepted 
    GROUP BY accepter_id
)

-- select * from bus


select top 1 requester_id as id , sum(b) as num
from bus 
group by requester_id
order by sum(b) desc
