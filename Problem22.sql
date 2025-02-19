/* 550. Game Play Analysis IV */
with first_logins as (
select 
    act.player_id
    ,min(act.event_date) login_date
from Activity act
group by act.player_id
), next_logins as (
    select count(1) login_count
    from first_logins flg
    join Activity act 
        on flg.player_id = act.player_id
        and flg.login_date = dateadd(day, -1, act.event_date) 
)

select 
    round((select login_count * 1.0 from next_logins ) 
    / (select count(1) from first_logins), 2) fraction