-- 3465. Find Products with Valid Serial Numbers
select *
from products
where regexp_like(description,'\\bSN[0-9]{4}-[0-9]{4}\\b','c')
order by product_id asc