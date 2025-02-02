/* 1683. Invalid Tweets */
select t.tweet_id
from Tweets t
where len(t.content) > 15