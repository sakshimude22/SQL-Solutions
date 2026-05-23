-- weather observations stations 8
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) IN ('A','E','I','O','U')
AND RIGHT(CITY,1) IN ('A','E','I','O','U');
