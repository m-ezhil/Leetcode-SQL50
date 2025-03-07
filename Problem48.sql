/* 1484. Group Sold Products By The Date */

select 
    act.sell_date
    ,count(act.product) as num_sold
    ,string_agg(act.product, ',') within group(order by act.product) as products
from (select distinct * from Activities) act
group by act.sell_date
order by act.sell_date