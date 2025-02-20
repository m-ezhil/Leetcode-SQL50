/* 2356. Number of Unique Subjects Taught by Each Teacher */

select 
    t.teacher_id
    ,count(distinct t.subject_id) cnt
from Teacher t
group by t.teacher_id