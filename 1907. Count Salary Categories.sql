# Write your MySQL query statement below
with bus as (
    select account_id , (case when income<20000 then 'Low Salary' 
    when income > 50000 then 'High Salary' else 'Average Salary' end) as cat
    from Accounts
)

select levelName as category  ,  count(account_id) as accounts_count 
from bus right join  (
    SELECT 'Low Salary' AS LevelName
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
) AS SalaryLevel
on levelName = cat
group by levelName
