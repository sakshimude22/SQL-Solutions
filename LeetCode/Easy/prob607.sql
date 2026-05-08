--607. Sales Person
select name 
from SalesPerson 
where sales_id not in(
    select o.sales_id
    from Orders o
    JOIN Company c
    ON o.com_id = c.com_id
    WHERE c.name = 'RED'
);
