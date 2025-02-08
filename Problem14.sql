/* 1934. Confirmation Rate */

select 
    su.user_id
    ,round(sum(case when cnf.action = 'confirmed' then 1 else 0 end) * 1.0 / count(coalesce(cnf.action, 0)), 2) confirmation_rate
from Signups su
left join Confirmations cnf
    on cnf.user_id = su.user_id
group by su.user_id