/* 1068. Product Sales Analysis I */
/* Note: I run this query with sql server in leedcode but leetcode show 'Time Limit Exceeded' error. But in mysql it's works fine. */
select 
    p.product_name
    ,s.year
    ,s.price
from Sales s
join Product p
    on  s.product_id = p.product_id