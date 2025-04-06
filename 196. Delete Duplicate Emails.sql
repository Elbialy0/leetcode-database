with sol as (
    select email , rank() over (partition by email order by id) as a 
    from Person
)
delete  from sol
where a >1
