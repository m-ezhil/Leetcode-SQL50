/* 197. Rising Temperature */
select
    w1.id
from Weather w1
Join Weather w2
    on w2.recordDate = dateadd(day, -1, w1.recordDate)
where 
    w1.temperature > w2.temperature 