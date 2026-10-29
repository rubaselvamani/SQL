/*** Q Link: https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true

Submission:  ****/


Select
hacker_id
,name
,sum(max_score) total_score
from
(
Select
s.hacker_id
,h.name
,s.challenge_id
,max(score) max_score
from
submissions s
join
hackers h
on
s.hacker_id = h.hacker_id
group by 1,2,3
having max_score >0
) a group by 1,2
order by total_score desc
,hacker_id 
