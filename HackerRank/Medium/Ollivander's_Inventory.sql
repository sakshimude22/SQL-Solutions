-- Ollivander's Inventory
SELECT w.id, wp.age, w.coins_needed, w.power
from Wands w
join Wands_Property wp
on w.code = wp.code
WHERE wp.is_evil = 0
and w.coins_needed = (
    select min(w2.coins_needed)
    from Wands w2
    join Wands_Property wp2
    on w2.code = wp2.code
    where wp2.is_evil = 0
    and w2.power = w.power
    and wp2.age = wp.age 
)
order BY
w.power DESC,
wp.age desc;