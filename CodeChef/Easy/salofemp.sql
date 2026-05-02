/*Salary of Employees
Task
Create a query to retrieve the employee_name, company, and salary for employees 
in the full-time category, ordered by salary in descending order*/

select employee_name, company, salary
from Employees 
where category = 'Full-Time'
order by salary desc;