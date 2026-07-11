-- Top Competitors
SELECT h.hacker_id, h.name 
FROM hackers h 
JOIN (
    select s.hacker_id,
    count(distinct s.challenge_id) as full_score_count
    from Submissions s
    join Challenges c
    on s.challenge_id = c.challenge_id
    join Difficulty d
    on c.difficulty_level = d.difficulty_level
    where s.score = d.score
    group by s.hacker_id
    having count(distinct s.challenge_id) > 1
) fs
on h.hacker_id = fs.hacker_id
order by fs.full_score_count DESC,
h.hacker_id ASC;