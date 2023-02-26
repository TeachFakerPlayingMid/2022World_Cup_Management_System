--a.Write a SQL query that lists all the stadium names and their locations and the match date of matches
--in which player Christine Sinclair has played and scored at least one goal.
-- I will change Christine Sinclair into Kylian Mbappe, whose pid = 9000012
SELECT s.name, s.location, m.date
FROM STADIUM s INNER JOIN MATCH m
                          ON s.name = m.stadium
WHERE m.identidier IN ( SELECT identidier
                        FROM Player p INNER JOIN MatchGoals
                        ON p.pid = MatchGoals.who_scored
                        WHERE p.name = 'Kylian Mbappe' AND MATCHGoals.occurrence >=1)
AND m.identidier IN ( SELECT ATTENDANCE
                      FROM Match_Player
                      WHERE MATCH_PLAYER.ATTENDANCE = true);

-----------------------------------------------------------------------------------------------------
--Write a SQL query that lists the name, shirt number and country of all players that have played in all
--matches of their teams.

SELECT name,shirt_number,country
FROM PLAYER
WHERE PLAYER.pid IN (SELECT pid
                     FROM MATCH_PLAYER
                     WHERE MATCH_PLAYER.attendance = true
                     EXCEPT
                     SELECT pid
                     FROM MATCH_PLAYER
                     WHERE MATCH_PLAYER.attendance = false);