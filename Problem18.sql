/* 1633. Percentage of Users Attended a Contest */

declare @usrs decimal(18, 0) = (select count(1) from Users);
select 
    contest_id
    ,round(count(user_id) * 100.0 / @usrs, 2) as percentage
from Register 
group by contest_id
order by percentage desc, contest_id asc