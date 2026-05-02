/*Handling NULL Values
Task
Write a query to retrieve book_id, title, author and
 published_year of the books which have NULL rating for their books.*/

SELECT book_id, title, author, published_year 
FROM Library 
WHERE rating IS NULL;