-- Contest Leaderboard
/*
Enter your query here.
*/
select hacker_id, name, SUM(max_score) AS total_score 
FROM (
    SELECT h.hacker_id, h.name, MAX(s.score) AS max_score
    FROM submissions s 
    JOIN hackers h ON s.hacker_id = h.hacker_id
    GROUP BY h.hacker_id, h.name, s.challenge_id
) AS max_scores
group by hacker_id, name
having total_score > 0
order by total_score desc, hacker_id asc