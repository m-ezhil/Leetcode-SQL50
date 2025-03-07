/* 1327. List the Products Ordered in a Period */
select
    p.product_name 
    ,sum(o.unit) as unit
from Products as p
left join Orders o
    on o.product_id = p.product_id
where month(o.order_date) = 2 and year(o.order_date) = 2020
group by p.product_name 
having sum(o.unit) >= 100