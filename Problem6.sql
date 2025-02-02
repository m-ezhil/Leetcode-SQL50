/* 1378. Replace Employee ID With The Unique Identifier */
select 
    euid.unique_id
    ,e.name
from Employees e
left join EmployeeUNI euid
    on euid.id = e.id
