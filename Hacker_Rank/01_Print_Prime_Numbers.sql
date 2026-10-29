### Q link: https://www.hackerrank.com/challenges/print-prime-numbers/problem?isFullScreen=true

### Submission: (Language: MS SQL Server )

SET NOCOUNT ON;

DECLARE @Output AS VARCHAR(MAX) = '';
with prime_find(id)
AS
(select 1 as id
union all
select id+1 from prime_find where id <=999
)

select @Output += CAST(id AS VARCHAR(3)) + '&'  from prime_find where id >1 and id not in
(
   select  distinct n2.id as n2id 
        from prime_find n1 
        cross join prime_find n2 
        where  (n1.id<(n2.id) and n1.id>1 and  ( n2.id % n1.id = 0)  )
)  
Option (maxrecursion 0)
PRINT SUBSTRING(@Output,1,LEN(@Output)-1);

    
go
