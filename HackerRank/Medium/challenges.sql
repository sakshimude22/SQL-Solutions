-- Challenges
with a AS (
    SELECT h.hacker_id,
        name, 
        count(distinct challenge_id) AS cnt
    FROM hackers AS h
        LEFT JOIN challenges AS c ON h.hacker_id = c.hacker_id
    GROUP BY 1, 2
)

, b AS (
    SELECT *
        , rank() over(order by cnt desc) AS r_max
        , count(hacker_id) over(partition by cnt) AS r_cnt
    FROM a
    
)

SELECT hacker_id, name, cnt 
FROM b 
WHERE r_max = 1 
    OR (r_max > 1 AND r_cnt = 1)
ORDER BY 3 desc, 1