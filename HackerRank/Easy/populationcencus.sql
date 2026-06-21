-- Population Census
SELECT SUM(ci.POPULATION) as total_population
from CITY ci
JOIN COUNTRY c
ON ci.CountryCode = c.Code
where c. CONTINENT = 'Asia';