/*Task
Write a query to find all product_name and category that have a 
price greater than 100.00 from the Products table.*/

select product_name, category
from Products
where price > 100.00;