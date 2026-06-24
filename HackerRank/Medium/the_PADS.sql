-- the PADS
SELECT 
Name + '(' + left(Occupation,1) + ')'
from OCCUPATIONS 
order by Name;

select 
'There are a total of ' +
cast(count(*) as varchar) + ' ' +
lower(Occupation) + 's.'
from OCCUPATIONS
group by Occupation
order by count(*), Occupation;