/*** Q Link: https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true

Submission:  ****/


Select
name
from
(
Select
s.id
,s.name
,p.salary stud_sal
,fp.salary frnd_sal
from
students s
join
friends f
on
s.id = f.id
join
packages p
on
p.id = s.id
join 
packages fp
on
fp.id=f.friend_id
where p.salary < fp.salary
order by frnd_sal asc
) a

