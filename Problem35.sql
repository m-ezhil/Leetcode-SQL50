/* 1204. Last Person to Fit in the Bus */

with weight_history as (
    select 
        sum(weight) over(order by turn) total_weight
        ,*
    from Queue 
)

select 
    top 1 person_name
from weight_history
where total_weight <= 1000
order by total_weight desc
