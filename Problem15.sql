/* 620. Not Boring Movies */

select 
    *
from Cinema c
where c.id%2 != 0 and c.description not like '%boring%'
order by rating desc