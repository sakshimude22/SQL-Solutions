-- 1407. Top Travellers
select u.name,
ifnull(sum(r.distance), 0) as travelled_distance 
from Users u
left join Rides r
on u.id = r.user_id
group by u.id, u.name
ORDER BY travelled_distance DESC, u.name ASC;