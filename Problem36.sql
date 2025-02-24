/* 1907. Count Salary Categories */

select 'Low Salary' as category, count(income) as accounts_count
from Accounts
where income < 20000
union all
select 'Average Salary' as category, count(income) as accounts_count
from Accounts
where income between 20000 and 50000
union all
select 'High Salary' as category, count(income) as accounts_count
from Accounts
where income > 50000


/* New Approch Learned from random leetcode solution */
select 
    c.category
    ,count(a.income) as accounts_count
from (values('Low Salary'), ('Average Salary'), ('High Salary')) as c (category)
left join Accounts a
    on case
        when a.income < 20000 then 'Low Salary'
        when a.income > 50000 then 'High Salary'
        else 'Average Salary'
    end = c.category
group by c.category