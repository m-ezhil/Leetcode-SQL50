/* 176. Second Highest Salary */
/* Approach 1 */
select (
    select distinct top 1
        salary
    from Employee
    where salary < (select max(salary) from Employee)
    order by salary desc
) as SecondHighestSalary


/* Approach 2 */
select (
    select distinct
        salary
    from Employee
    order by salary desc
    offset 1 row 
    fetch next 1 row only
) as SecondHighestSalary