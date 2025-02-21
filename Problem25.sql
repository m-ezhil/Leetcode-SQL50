/* 1070. Product Sales Analysis III */
with sale_history as (
select
    dense_rank() over(partition by s.product_id order by s.year) rnk
    ,s.product_id
    ,s.year as first_year
    ,s.quantity
    ,s.price
from Sales s)


select 
    s.product_id
    ,s.first_year
    ,s.quantity
    ,s.price
from sale_history s
where s.rnk = 1