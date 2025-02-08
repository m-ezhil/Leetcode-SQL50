/* 1075. Project Employees I */

select 
    prj.project_id
    ,round(sum(emp.experience_years) * 1.0 / count(emp.employee_id), 2) as average_years
from Project prj
left join Employee emp
    on prj.employee_id = emp.employee_id
group by prj.project_id