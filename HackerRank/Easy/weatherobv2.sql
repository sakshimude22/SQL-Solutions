-- weather observation station 2
SELECT 
CAST(ROUND(SUM(LAT_N), 2) AS DECIMAL(10,2)) AS lat_sum,
CAST(ROUND(SUM(LONG_W), 2) AS DECIMAL(10,2)) AS long_sum
FROM STATION;