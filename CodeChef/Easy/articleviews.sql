/*Article views
Task
Write a query to retrieve the author_id, author_name, and publication_name for authors 
whose articles got zero views. The result should be sorted by author_id in ascending order.*/
select author_id, author_name, publication_name
from Views
where view_count = 0
order by author_id asc;