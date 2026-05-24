-- weather observations station 10
SELECT DISTINCT CITY 
FROM STATION
WHERE RIGHT(CITY, 1) NOT IN ('a','e','i','o','u');