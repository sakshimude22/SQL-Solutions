-- weather observations station 11
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) NOT IN ('A','E','I','O','U')
OR RIGHT(CITY,1) NOT IN ('A','E','I','O','U');