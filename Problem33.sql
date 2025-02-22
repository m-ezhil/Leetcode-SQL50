/* 180. Consecutive Numbers */
with lg as (
select 
    num, lead(num, 1) over(order by id) num2, lead(num, 2) over(order by id) num3
from Logs
)

select
    distinct lg.num as ConsecutiveNums
from lg
where lg.num = lg.num2 and lg.num2 = lg.num3