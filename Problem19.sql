/* 1211. Queries Quality and Percentage */
select 
    query_name
    ,round(avg(rating * 1.0 / position), 2) quality
    ,round((avg(rating < 3) * 100.0) , 2) poor_query_percentage
from Queries 
group by query_name