/* Write your T-SQL query statement below */
select query_name , round(avg(rating*1.0/position),2) as quality 
  ,  ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.0 / COUNT(rating), 2) AS poor_query_percentage
from Queries y
group by query_name
