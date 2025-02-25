/* 626. Exchange Seats */
with odd_seat as (
    select 
        id
        ,student
    from Seat
    where id % 2 != 0
), even_seat as (
    select 
        id
        ,student
    from Seat
    where id % 2 = 0
)

select 
    s.id
    , case
        when s.id % 2 = 0 then o.student
        when e.student is null then s.student
        else e.student
    end student
from Seat s
left join odd_seat o
    on o.id = s.id-1
left join even_seat e
    on e.id = s.id+1

/* Another Interesting Solution */
select 
    id
    ,case 
        when id % 2 = 0 then lag(student) over(order by id)
        else coalesce(lead(student) over(order by id), student)
    end student
from Seat