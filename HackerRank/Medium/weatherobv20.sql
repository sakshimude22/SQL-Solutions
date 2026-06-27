-- weather observation station 20
WITH CTE AS (
    SELECT
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
        COUNT(*) OVER () AS total_rows
    FROM STATION
)

SELECT ROUND(LAT_N, 4)
FROM CTE
WHERE rn = CEILING(total_rows * 1.0 / 2);
