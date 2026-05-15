-- 1341. Movie Rating
-- Write your MySQL query statement below
(
    select
    u.name as results
    from MovieRating mr
    join Users u
    on mr.user_id = u.user_id
    group by u.user_id, u.name
    order by count(*) desc, u.name
    limit 1
)
union all
(
    select m.title as results
    from MovieRating mr
    join Movies m
    on mr.movie_id = m.movie_id
    where DATE_FORMAT(created_at, '%Y-%m') = '2020-02'
    group by m.movie_id, m.title
    order by avg(rating) desc, m.title
    limit 1
);
