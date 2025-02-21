/* 596. Classes More Than 5 Students */
select
    c.class
from Courses c
group by c.class
having count(1) >= 5