-- 1517. Find Users With Valid E-Mails
select *
from Users
where mail regexp '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$'
AND mail LIKE BINARY '%@leetcode.com';
