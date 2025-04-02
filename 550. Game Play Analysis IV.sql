select round(count(player_id)*1.00/(select count(distinct player_id) from Activity),2) as fraction
from Activity x
where DATEADD(DAY, -1, event_date)  = (select min(y.event_date) from Activity y where x.player_id=y.player_id)
