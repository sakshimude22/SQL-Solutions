-- 3626. Find Stores with Inventory Imbalance

-- with cte as (
--     select distinct store_id,
--     first_value(product_name) over(partition by store_id order by price desc ) as most_exp_product,
--     first_value(product_name) over(partition by store_id order by price asc) as cheapest_product,
--     first_value(quantity) over(partition by store_id order by price desc) as most_exp_product_quantity,
--     first_value(quantity) over(partition by store_id order by price asc) as cheapest_product_quantity 
--     from inventory
-- ) 
-- select cte.store_id, s.store_name, s.location, cte.most_exp_product, cte.cheapest_product,
-- round(cheapest_product_quantity/most_exp_product_quantity, 2) as imbalance_ratio
-- from cte
-- join stores s
-- on cte.store_id = s.store_id
-- where cte.store_id in (
--     select store_id 
--     from inventory
--     group by store_id
--     having count(*) >= 3)
--     and cte.most_exp_product_quantity < cte.cheapest_product_quantity
--     order by imbalance_ratio desc, s.store_name;


with max_prices as (
    select store_id, max(price) as max_price,
    min(price) as min_price
    from inventory
    group by store_id
    having count(distinct product_name) >= 3
)
, max_min_prod as (
    select i.store_id, i.product_name, i.quantity, i.price
    from inventory i
    join max_prices mp
    on i.store_id = mp.store_id
    and (i.price = mp.max_price or i.price = mp.min_price)
)
select s.store_id, s.store_name, s.location, me.product_name as most_exp_product,
ch.product_name as cheapest_product, round(ch.quantity / me.quantity, 2) as imbalance_ratio
from max_min_prod me
join max_min_prod ch
on me.store_id = ch.store_id
and me.price > ch.price
and me.quantity < ch.quantity
join stores s
on s.store_id = me.store_id
order by imbalance_ratio desc, s.store_name asc;
