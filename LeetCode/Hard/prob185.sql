-- 185. Department Top Three Salaries
Select d.name as Department,
       e.name as Employee,
       e.salary as Salary
From Employee e
Join Department d
on e.departmentID = d.id
where(
    select count(distinct e2.salary)
    from Employee e2
    where e2.departmentID = e.departmentID
    and e2.salary > e.salary
) < 3;