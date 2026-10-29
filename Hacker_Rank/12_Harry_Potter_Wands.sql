/*** Q Link: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true

Submission:  ***/

Select
 a.id
,b.age
,a.coins_needed
,a.power
from
wands a
join
wands_property b
on
a.code = b.code
where is_evil =0
and
a.coins_needed =
(select min(coins_needed) min_coins from wands c where c.code =a.code and c.power = a.power ) 
order by a.power desc
,b.age desc
,a.coins_needed asc
