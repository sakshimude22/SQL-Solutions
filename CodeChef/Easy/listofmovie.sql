/*List of Movies with Ratings
Task
Write a query to select only the movie names where the ratings are greater than 7 but less than 9.*/

select Movie_name from Cinema
where Rating > 7 and Rating < 9;