-- 627. Swap Sex of Employees
update Salary
set sex = case
when sex = 'm' then 'f'
else 'm'
end;
