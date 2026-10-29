/*** Q Link: https://www.hackerrank.com/challenges/weather-observation-station-5

Submission:  ****/

Select

city
,len
from
(
Select

city
,length(city) len

, row_number() 
    over (partition by 
                 case when length(city) = (select min(length(city)) from station) then 'min'
                      when length(city) = (select max(length(city)) from station) then 'max'
                      end 
          order by city ) rnk
from
station
where 
    length(city) in (
        (select min(length(city)) from station)
        ,(select max(length(city)) from station)
    )

) rnk
where rnk = 1
order by len
