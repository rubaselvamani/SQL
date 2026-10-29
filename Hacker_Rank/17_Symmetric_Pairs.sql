/*** Q Link: https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true

Submission:  ****/

Select X,Y
from
(
Select
a.X
,a.Y
from functions a
join
functions b
on
a.X=b.Y and a.Y=b.X
where a.X <b.X
group by 1,2
union
Select
a.X
,a.Y
from functions a
where a.X =a.Y
group by 1,2
having count(*) >=2
) a
order by a.X asc
