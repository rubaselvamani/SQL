/**** ## Q Link: https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true

# Submission:  ****/

SET NOCOUNT ON;

declare @x int
select @x=20
while @x>0
begin
print replicate('* ',@x)
set @x=@x-1
end
go
