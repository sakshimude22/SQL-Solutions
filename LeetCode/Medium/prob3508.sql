-- 3580. Find Consistently Improving Employees
# Write your MySQL query statement below
with RankedReviews as (
    select pr.employee_id, pr.review_date, e.name, pr.rating,
    ROW_NUMBER() over (partition by pr.employee_id order by pr.review_date desc) as rn

    from performance_reviews pr
    join employees e
    on e.employee_id = pr.employee_id
),
Last3 as (
    select * 
    from RankedReviews
    where rn <= 3
),
Increase as (
    select *,
    LAG(rating, 1) over (partition by employee_id order by review_date) as prev,
    LAG(rating, 2) over (partition by employee_id order by review_date) as prev2
    from Last3
)
select employee_id, name, rating - prev2 as improvement_score
from Increase
where prev2 is not null
and rating > prev
and prev > prev2
order by improvement_score desc, name;