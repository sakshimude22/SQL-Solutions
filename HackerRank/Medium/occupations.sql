-- Occupations
with CTE as(
    select Name,
    Occupation,
    ROW_NUMBER() OVER (
        partition by Occupation
        order by Name
    ) as rn
    from OCCUPATIONS
) 
select 
max(case when Occupation = 'Doctor' then Name end) as Doctor,
max(case when Occupation = 'Professor' then Name end) as Professor,
max(case when Occupation = 'Singer' then Name end) as Singer,
max(case when Occupation = 'Actor' then Name end) as Actor
from CTE 
group by rn
order by rn;