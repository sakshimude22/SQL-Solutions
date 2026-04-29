/*Locate People
Task
Write a query to retrieve the department_name and 
location of people who live in location that starts with 'S'.*/

select department_name, location
from departments
where location LIKE 'S%';