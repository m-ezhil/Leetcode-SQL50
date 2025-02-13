/* 1193. Monthly Transactions I */

select 
    format(t.trans_date, 'yyyy-MM') month
    ,t.country
    ,count(1) trans_count
    ,sum(case 
        when t.state = 'approved' then 1 
        else 0
    end) approved_count
    ,sum(t.amount) trans_total_amount
    ,sum(case 
        when t.state = 'approved' then t.amount
        else 0
    end) approved_total_amount
from Transactions t
group by format(t.trans_date, 'yyyy-MM'), t.country