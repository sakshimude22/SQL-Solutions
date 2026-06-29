-- 3421. Find Students Who Improved
with first_exam as (
    select student_id,
    subject,
    score,
    ROW_NUMBER() OVER (
        PARTITION BY student_id, subject
        order by exam_date
    ) as rn
    from Scores
),
last_exam as(
    select 
    student_id,
    subject,
    score,
    ROW_NUMBER() OVER (
        PARTITION BY student_id, subject
        order by exam_date desc
    ) as rn
    from Scores
)
select 
f.student_id, f.subject, f.score as first_score,
l.score as latest_score
from first_exam f
join last_exam l
on f.student_id = l.student_id
and f.subject = l.subject
where f.rn = 1
and l.rn = 1
and l.score > f.score
order by f.student_id, f.subject;