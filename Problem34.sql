/* 1164. Product Price at a Given Date */
with product as (
    select 
        distinct product_id 
    from Products
),
price_changes as (
    select 
        product_id
        ,new_price
        ,dense_rank() over(partition by product_id order by change_date desc) rnk
    from Products
    where change_date <= '2019-08-16'
)

select 
    p.product_id
    ,coalesce(pc.new_price, 10) price
from product p
left join price_changes pc 
    on pc.product_id = p.product_id and pc.rnk = 1