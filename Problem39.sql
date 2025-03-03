/* 1341. Movie Rating */
with usr_rating as (
    select top 1
        mr.user_id as id
        ,usr.name
        ,count(1) as rtg
    from MovieRating mr
    left join Users usr
        on usr.user_id = mr.user_id
    group by mr.user_id, usr.name
    order by rtg desc, name asc
), mov_rating as (
    select top 1
        mr.movie_id as id
        ,mv.title as name
        ,avg(rating * 1.0) as rtg
    from MovieRating mr
    left join Movies mv
        on mv.movie_id = mr.movie_id
    where year(mr.created_at) = 2020 and month(mr.created_at) = 2
    group by mr.movie_id, mv.title
    order by rtg desc, name asc
)

select 
    u.name as results
from usr_rating u
union all
select 
    m.name as results
from mov_rating m