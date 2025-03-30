/* Write your T-SQL query statement below */
select
 start.machine_id as machine_id ,
  round(avg(endl.timestamp-start.timestamp),3) as processing_time

from Activity start join Activity as endl

on  start.machine_id = endl.machine_id
 and start.activity_type='start'
  and endl.activity_type = 'end' 
  and start.process_id = endl.process_id 

group by start.machine_id
