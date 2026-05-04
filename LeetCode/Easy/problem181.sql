/*181. Employees Earning More Than Their Managers*/
select e.name as Employee
from Employee e
join Employee m
on e.managerId = m.id
where e.salary > m.salary;