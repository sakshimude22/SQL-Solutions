/*Fiction Collection Size
Task
Write a query to find the total count of books whose genre is Fiction.
Note: Output column name should be fiction_count.*/

select count(genre) as fiction_count
from Books
where genre = 'Fiction';