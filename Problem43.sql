/* 185. Department Top Three Salaries */

with salary_rank as (
    select
        dept.name as Department
        ,e.name as Employee
        ,e.salary as Salary
        ,dense_rank() over(partition by e.departmentId order by e.salary desc) rnk
    from Employee e
    left join Department dept
        on dept.id = e.departmentId
)

select 
    Department
    ,Employee
    ,Salary
from salary_rank
where rnk <= 3