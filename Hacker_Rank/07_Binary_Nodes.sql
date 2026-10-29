/****** ## Q Link: https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true

# Submission:

******/

Select
N
,case 
when P is null then 'Root'
when P is not null and (select count(*) from bst b where b.P = a.N) > 0  then 'Inner'
else 'Leaf'
end
from
bst a
order by n
