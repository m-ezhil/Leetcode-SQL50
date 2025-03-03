/* 1321. Restaurant Growth */
select 
    c.visited_on,
    (select 
        sum(amount)
    from Customer
    where visited_on between dateadd(day, -6, c.visited_on) and  c.visited_on) as amount,
    (select 
        round(sum(amount * 1.0) / 7, 2)
    from Customer
    where visited_on between dateadd(day, -6, c.visited_on) and c.visited_on) as average_amount
from Customer c
where datediff(day, (select min(visited_on) from Customer), c.visited_on) >= 6
group by c.visited_on
order by c.visited_on