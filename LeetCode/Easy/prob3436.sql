-- 3436. Find Valid Emails
select user_id,email
from Users
where email REGEXP '^[a-z0-9_]+@[^@0-9]+\\.com$' 
order by user_id;