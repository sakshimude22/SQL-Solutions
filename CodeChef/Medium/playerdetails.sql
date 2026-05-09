/*Player Details
Task
Write a query to retrieve the details of the last five matches played, including the 
match ID, the names of the players who participated, the name of 
the winning player, match date, and the final score of the winner.*/
SELECT m.match_id, 
m.player_1, 
m.player_2, 
m.winner, 
m.match_date, 
p.score
FROM Matches m
JOIN Players p ON m.winner = p.player_name
ORDER BY m.match_date DESC
LIMIT 5;