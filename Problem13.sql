/* 570. Managers with at Least 5 Direct Reports */

select 
    mng.name
from Employee mng
left join Employee rpt
    on rpt.managerId = mng.id
group by mng.id, mng.name
having count(rpt.id) >= 5