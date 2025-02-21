/* 1731. The Number of Employees Which Report to Each Employee */
select 
    m.employee_id
    ,m.name
    ,count(r.employee_id) as reports_count 
    ,cast(round(sum(r.age) * 1.0 / count(r.employee_id), 0) as int) as average_age 
from Employees m
join Employees r
    on m.employee_id = r.reports_to
group by m.employee_id, m.name
order by m.employee_id