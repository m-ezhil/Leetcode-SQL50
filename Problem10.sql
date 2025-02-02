/* 1661. Average Time of Process per Machine */

select 
    machine_id
    ,round(avg(cmptm), 3) processing_time
from (select
        a1.machine_id
        ,a1.process_id
        ,(a2.timestamp - a1.timestamp) cmptm
    from Activity a1
    join Activity a2
        on a1.machine_id = a2.machine_id
            and a1.process_id = a2.process_id
            and a2.activity_type = 'end'
    where 
        a1.activity_type != 'end') t
group by t.machine_id