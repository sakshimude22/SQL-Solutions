-- 1075. Project Employees I
select p.project_id, 
cast(avg(e.experience_years) as decimal(10,2)) as average_years
from Project p
join Employee e
on p.employee_id = e.employee_id
group by p.project_id;