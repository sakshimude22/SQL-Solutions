-- The Report
select 
case 
when g.Grade < 8 then null
else s.Name
end as Name,
 g.Grade, s.Marks
from Students s
join Grades g
on s.Marks between g.Min_Mark and g.Max_Mark
order by 
g.Grade desc,
case 
when g.Grade >= 8 then s.Name
end asc,
case when g.Grade < 8 then s.Marks
end asc;