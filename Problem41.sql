/* 602. Friend Requests II: Who Has the Most Friends */
with ppl_ids as (
    select distinct
        requester_id as id
    from RequestAccepted
    union
    select distinct
        accepter_id as id
    from RequestAccepted
),
frds_cnt as (
    select top 1
        ppl.id
        ,count(1) as num
    from ppl_ids ppl
    left join RequestAccepted ra
        on ra.requester_id = ppl.id or ra.accepter_id = ppl.id
    group by ppl.id
    order by count(1) desc
)

select *
from frds_cnt