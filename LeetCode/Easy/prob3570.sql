-- 3570. Find Books with No Available Copies
with borrowed as (
select book_id, count(*) as current_borrowers
from borrowing_records
where return_date is null
group by book_id
)
select l.book_id,l.title,l.author,l.genre,
l.publication_year,b.current_borrowers
from library_books l
join borrowed b
on l.book_id = b.book_id
where b.current_borrowers = l.total_copies
order by b.current_borrowers desc, l.title asc;