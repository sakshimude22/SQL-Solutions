/*Player Performance Insights
Task
Write a query to find the names of the top 3 distinct 
players by highest score who have won matches, including their scores.*/
select DISTINCT p.player_name, p.score
from Players p 
join Matches m on p.player_name = m.winner
order by p.score desc
limit 3;
