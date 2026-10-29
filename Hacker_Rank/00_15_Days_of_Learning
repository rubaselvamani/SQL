
#### Q- Link : https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem?isFullScreen=true

### Submission :

SELECT sd, cnt, h.hacker_id, h.name
FROM(

SELECT 
    sd
    /*****************Column subquery-unique hacker -submission starting from very first day***************/
    ,(SELECT 
            COUNT(DISTINCT s.hacker_id) 
            FROM 
            submissions s 
            WHERE s.submission_date <= sd 
            AND
            (
             SELECT 
                  COUNT(DISTINCT submission_date) 
             FROM 
             submissions ss 
             WHERE ss.hacker_id = s.hacker_id
             AND ss.submission_date <= sd
            ) = 1+DATEDIFF(sd,'2016-03-01')) AS cnt
    
    /*****************Column subquery---hacker by max submission each day***************/
    ,(SELECT
            s.hacker_id
      FROM
      submissions s       
      WHERE s.submission_date = sd
      GROUP BY s.hacker_id 
      ORDER BY 
      COUNT(s.submission_id) DESC, s.hacker_id LIMIT 1
     ) AS hacker_id
    

FROM
    (SELECT 
     submission_date sd
     FROM 
     submissions
     GROUP BY 
     submission_date
    ) AS date_tbl

) AS TBL2
JOIN 
hackers h 
ON h.hacker_id = TBL2.hacker_id
ORDER BY sd
