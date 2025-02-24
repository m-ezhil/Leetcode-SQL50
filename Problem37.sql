/* 1978. Employees Whose Manager Left the Company */

select 
    emp.employee_id
from Employees emp
where emp.salary < 30000
    and emp.manager_id is not null
    and not exists(select 1 from Employees mng where mng.employee_id = emp.manager_id)
order by emp.employee_id
