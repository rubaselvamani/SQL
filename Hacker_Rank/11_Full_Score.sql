/** Q Link: https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true ***/

/*** Submission ***/



Select a.hacker_id,name
from
(
Select s.hacker_id,count( s.challenge_id) cnt 
from
submissions s
join
challenges c
on s.challenge_id = c.challenge_id
join
difficulty d
on
d.difficulty_level = c.difficulty_level
where (d.score = s.score)    
group by 1
having count( s.challenge_id) > 1
) a
join
hackers b
on
a.hacker_id = b.hacker_id
order by cnt desc
,a.hacker_id asc
