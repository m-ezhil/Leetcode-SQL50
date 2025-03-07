/* 196. Delete Duplicate Emails */

with person_count as (
    select *
        ,dense_rank() over(partition by email order by id) did
    from Person
)

delete from Person
where id in  (select pc.id from person_count pc where pc.did <> 1)