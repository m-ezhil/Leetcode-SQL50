/* 1174. Immediate Food Delivery II */

with dlv as (
    select 
        order_date as orddt
        ,customer_pref_delivery_date as cpdt
        ,row_number() over(partition by customer_id order by order_date) rno
    from Delivery
)

select 
    round(
        count(case when orddt = cpdt then 1 end) * 100.0 / count(1)
    , 2) as immediate_percentage
from dlv
where rno = 1