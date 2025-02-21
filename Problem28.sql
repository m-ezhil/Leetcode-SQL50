/* 619. Biggest Single Number */

with single_numbers as (
    select 
        num
    from MyNumbers 
    group by num
    having count(num) = 1
)

select 
    max(num) as num
from single_numbers