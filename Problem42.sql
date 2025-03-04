/* 585. Investments in 2016 */
select 
    round(sum(tiv_2016 * 1.0), 2) as tiv_2016
from Insurance ins
where exists(select 1 from Insurance i where i.pid <> ins.pid and i.tiv_2015 = ins.tiv_2015)
    and not exists(select 1 from Insurance i where i.pid <> ins.pid and i.lat = ins.lat and i.lon = ins.lon)