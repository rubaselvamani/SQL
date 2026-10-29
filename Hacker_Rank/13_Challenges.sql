/*** Q Link: https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true

Submission:  ***/

Select
 a.hacker_id
,a.name
,count(challenge_id) cnt
from
hackers a
join
challenges b
on
a.hacker_id = b.hacker_id
group by 1,2
having cnt not in
(
select cnt1 from
(select hacker_id,count(challenge_id) cnt1 from challenges group by 1) a
join
(select hacker_id,count(challenge_id) cnt2 from challenges group by 1) b
on
(a.cnt1= b.cnt2 and a.hacker_id <> b.hacker_id)
group by 1 
having cnt1 <> (select max(cnt) from (select hacker_id,count(challenge_id) cnt from challenges group by 1)a)
)
order by cnt desc,a.hacker_id 
