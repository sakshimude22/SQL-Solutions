-- 586. Customer Placing the Largest Number of Orders
select customer_number 
from Orders 
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;