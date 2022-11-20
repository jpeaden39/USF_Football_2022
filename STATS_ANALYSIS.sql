*/ Below are questions asked so I can complete query statements/*

/*1. Show the game date and opponent for remaining schedule in order they will occur.*/

SELECT game_dt,opponet 
FROM usf_schedule
WHERE result_f IS NULL;

SELECT game_dt,opponet 
FROM usf_schedule
WHERE game_dt > sysdate();


/*2. Show USF's record for games they have played so far this year.*/

SELECT 
(SELECT COUNT(*) FROM  usf_schedule WHERE result_f = 'W') AS Wins, 
COUNT(*) AS LOSSES
FROM usf_schedule
WHERE result_f = 'L'
GROUP BY
result_f

/*3. Show the number of wins and loses by location **Hard** (Use GROUP BY/ HAVING)*/

(SELECT location,
(SELECT COUNT(*) FROM usf_schedule WHERE location = 'Home' AND result_f = 'W') AS Wins,
(SELECT COUNT(*) FROM usf_schedule WHERE location = 'Home' AND result_f = 'L') AS Loses
FROM usf_schedule
WHERE location = 'Home')
UNION 
(SELECT location,
(SELECT COUNT(*) FROM usf_schedule WHERE location = 'Away' AND result_f = 'W') AS Wins,
(SELECT COUNT(*) FROM usf_schedule WHERE location = 'Away' AND result_f = 'L') AS Loses
FROM usf_schedule
WHERE location = 'Away' )

/*4. What is the Average rushing yards USF would need for them to win next week?*/

/*5. Compare usf offensive stats to the opponets offensive stats and show the result */
SELECT Offense.o_total_yards, Defense.d_tot_yards, opponet, result_f FROM usf_football.usf_offense_stats_fact AS Offense
JOIN usf_defense_stats_facts_stats AS Defense ON defense.week_id = offense.week_id 
JOIN usf_schedule  sched ON sched.week_id  = offense.week_id

/*6. Show the number of rushing yards and passing yards for USF, along with the opponet for games played and to be played with the date?/*

SELECT Offense.o_pass_yards, Offense.o_rush_yards, opponet, game_dt  FROM usf_football.usf_offense_stats_fact offense
RIGHT OUTER JOIN usf_schedule sched ON offense.week_id = sched.week_id;

/*7. Average number of offensive total yards, rushing yards, and passing yards per game*/

SELECT AVG(o_total_yards), AVG(o_pass_yards), AVG(o_rush_yards) from usf_offense_stats_fact

/*8. Find the total number of offensive yards, passing yards, and rushing yards this season?*/

SELECT SUM(o_total_yards), SUM(o_pass_yards), SUM(o_rush_yards) from usf_offense_stats_fact

