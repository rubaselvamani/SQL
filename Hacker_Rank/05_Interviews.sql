### Q Link: https://www.hackerrank.com/challenges/interviews/problem?isFullScreen=true

## Submission:


Select
a.contest_id
,a.hacker_id
,a.name
,sum(1_m)
,sum(2_m)
,sum(3_m)
,sum(4_m)
from
(Select
ct.contest_id
,ct.hacker_id
,ct.name
,sum(total_submissions) 1_m
,sum(total_accepted_submissions) 2_m
from 
contests ct
join
colleges c
on ct.contest_id = c.contest_id
join
challenges ch
on
ch.college_id = c.college_id
left join
submission_stats s
on
s.challenge_id = ch.challenge_id
group by 
ct.contest_id,ct.hacker_id,ct.name
having
1_m > 0 
) a
inner join
(Select
ct.contest_id
,ct.hacker_id
,ct.name
,sum(total_views) 3_m
,sum(total_unique_views) 4_m
from 
contests ct
join
colleges c
on ct.contest_id = c.contest_id
join
challenges ch
on
ch.college_id = c.college_id
left join
view_stats v
on
v.challenge_id = ch.challenge_id
group by 
ct.contest_id,ct.hacker_id,ct.name
having
3_m > 0 
) b
on a.contest_id = b.contest_id and a.hacker_id = b.hacker_id
group by 1,2,3
having
sum(1_m) is not null
and sum(2_m) is not null
and sum(3_m) is not null
and sum(4_m) is not null
order by 1

