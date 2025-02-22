/* 1789. Primary Department for Each Employee */
with prm_cnt as (
select
    count(1) over(partition by employee_id) dcnt
    ,*
from Employee)

select 
    employee_id
    ,department_id 
from prm_cnt
where primary_flag = 'Y' or dcnt = 1