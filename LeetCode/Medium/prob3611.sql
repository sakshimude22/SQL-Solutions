-- 3611. Find Overbooked Employees
-- Write your MySQL query statement below
with process_1 as (
    select employee_id, sum(duration_hours) duration_total
    from meetings
    group by employee_id, WEEKOFYEAR(meeting_date), year(meeting_date)
)
select p.employee_id, e.employee_name, e.department, count(p.employee_id) meeting_heavy_weeks
from process_1 p 
inner join employees e on p.employee_id = e.employee_id
where duration_total > 20
group by p.employee_id, e.employee_name, e.department
having count(p.employee_id) > 1
order by meeting_heavy_weeks desc, employee_name;