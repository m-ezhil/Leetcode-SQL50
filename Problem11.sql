/* 577. Employee Bonus */
select
    emp.name
    ,bns.bonus
from Employee emp
left join Bonus bns
    on bns.empid = emp.empid
where coalesce(bns.bonus, 0) < 1000