/* 1148. Article Views I */
select 
    v.author_id as id
from Views v
where v.author_id = v.viewer_id
group by v.author_id
order by v.author_id    
