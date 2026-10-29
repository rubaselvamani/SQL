/**** ## Q Link : https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
## Submission:  ****/

SET @rownum := -1;
 
SELECT
   round(AVG(t.LAT_N),4)
FROM
(
   SELECT
      @rownum := @rownum + 1 AS rownum,
      STATION.LAT_N AS LAT_N
   FROM
      STATION
   ORDER BY STATION.LAT_N
) AS t
WHERE
   t.rownum IN (
      CEIL(@rownum/2),
      FLOOR(@rownum/2)
   )
;



