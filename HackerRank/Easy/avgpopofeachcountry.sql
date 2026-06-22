-- Average population of each country
SELECT c.Continent,
       FLOOR(AVG(ci.Population)) AS Avg_Population
FROM CITY ci
INNER JOIN COUNTRY c
ON ci.CountryCode = c.Code
GROUP BY c.Continent;