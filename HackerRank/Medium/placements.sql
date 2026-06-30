-- Placements
select s.Name
from Students s
join Friends f
on s.ID = f.ID
join Packages p1
on s.ID = p1.ID
join Packages p2
on f.Friend_ID = p2.ID
where p2.Salary > p1.Salary
order by p2.Salary;