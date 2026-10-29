/*****  ## Q link: https://www.hackerrank.com/challenges/draw-the-triangle-2/problem?isFullScreen=true

## Submission:  *****/

SET NOCOUNT ON;

with tree (number)
AS
(
select 1 AS nr
UNION ALL 
select number+1 AS nr FROM tree WHERE number <= 19
)

select 
REPLICATE('* ',number)
 from tree
Order by number asc
go
