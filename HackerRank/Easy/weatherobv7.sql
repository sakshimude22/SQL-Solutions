-- weather observations stations 7
SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(CITY, 1) IN ('a','e','i','o','u');