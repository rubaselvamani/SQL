# Q Link: https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true

# Submission:

Select
case 
when grade <8 then NULL
when grade>=8 then name end stud_name,
grade,
marks
from
students a
inner join
grades b
on
a.marks between b.min_mark and b.max_mark
order by
grade desc
,name asc
,case when grade <8 then marks end  ;

