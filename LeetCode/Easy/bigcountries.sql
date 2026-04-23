-- using  SQL, write a query to find the name, population and area of the countries in the world that have an area of at least 3 million square kilometers or a population of at least 25 million people.
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;