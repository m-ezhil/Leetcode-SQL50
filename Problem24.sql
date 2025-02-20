/* 1141. User Activity for the Past 30 Days I */
select 
    a.activity_date as day
    ,count(distinct user_id) as active_users
from Activity a
where a.activity_date between dateadd(day, -29, '2019-07-27') and '2019-07-27'
group by a.activity_date