Answers

"SELECT"

SELECT population FROM world
  WHERE name = 'Germany'

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

"SELECT names"

SELECT name FROM world
  WHERE name LIKE 'Y%'

SELECT name FROM world
  WHERE name LIKE '%Y'

SELECT name FROM world
  WHERE name LIKE '%x%'

SELECT name FROM world
  WHERE name LIKE '%land'

SELECT name FROM world
  WHERE name LIKE 'C%ia'

SELECT name FROM world
  WHERE name LIKE '%oo%'

SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

SELECT name FROM world
 WHERE name LIKE '%o__o%'

SELECT name FROM world
 WHERE name LIKE '____'

SELECT name
  FROM world
 WHERE name = capital

SELECT name
  FROM world
 WHERE capital = concat(name, ' City')

SELECT capital, name
  FROM world
 WHERE capital LIKE concat('%', name, '%')

SELECT capital, name
  FROM world
 WHERE capital LIKE concat(name, '_%')

SELECT name, REPLACE(capital, name, '')
  FROM world
 where capital LIKE concat(name, '_%')

"SELECT from WORLD Tutorial"

SELECT name, continent, population FROM world

SELECT name FROM world
WHERE population >= 200000000

SELECT name, gdp/population
  FROM world
 WHERE population >= 200000000

SELECT name, population/1000000
  FROM world
 WHERE continent = 'South America'

SELECT name, population
  FROM world
 WHERE name = 'France' OR name = 'Germany' OR name = 'Italy'

SELECT name
  FROM world
 WHERE name LIKE '%United%'

SELECT name, population, area
  FROM world
 WHERE area >= 3000000 OR population >= 250000000

SELECT name, population, area
  FROM world
 WHERE area >= 3000000 XOR population >= 250000000

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2)
  FROM world
 WHERE continent = 'South America'

SELECT name, ROUND(gdp/population,-3)
  FROM world
 WHERE gdp > 1000000000000

SELECT name, capital
  FROM world
 WHERE LENGTH(name) = LENGTH(capital)

SELECT name, capital
  FROM world
 WHERE LEFT(name, 1) = LEFT(capital, 1) AND name <> capital

SELECT name
   FROM world
WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%'
  AND name NOT LIKE '% %'

"SELECT from Nobel"

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

SELECT yr, subject
  FROM nobel
 WHERE winner = 'Albert Einstein'

SELECT winner
  FROM nobel
 WHERE yr >= 2000 AND subject = 'Peace'

SELECT *
  FROM nobel
 WHERE yr >= 1980 AND yr <= 1989 AND subject = 'Literature'

SELECT *
  FROM nobel
 WHERE winner = 'Theodore Roosevelt' OR winner = 'Woodrow Wilson' OR winner = 'Jimmy Carter' OR winner = 'Barack Obama'

SELECT winner
  FROM nobel
 WHERE winner LIKE 'John%'

SELECT yr, subject, winner
  FROM nobel
 WHERE (yr = 1980 AND subject = 'Physics') OR (yr = 1984 AND subject = 'Chemistry')

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1980 AND subject <> 'Chemistry' AND subject <> 'Medicine'

SELECT yr, subject, winner
  FROM nobel
 WHERE (subject = 'Medicine' AND yr < 1910) OR (subject = 'Literature' AND yr >= 2004)

SELECT *
  FROM nobel
WHERE winner = 'PETER GRÜNBERG'

SELECT *
  FROM nobel
WHERE winner = 'EUGENE O\NEILL'

SELECT winner, yr, subject
  FROM nobel
 WHERE winner LIKE 'Sir%'
 ORDER BY yr DESC

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject, winner

"SELECT within SELECT"

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

SELECT name FROM world
  WHERE continent = 'Europe' AND gdp/population >
     (SELECT gdp/population from world
      WHERE name = 'United Kingdom')

SELECT name, continent FROM world
  WHERE continent = (SELECT continent FROM world
    WHERE name = 'ARGENTINA') OR
    continent = (SELECT continent FROM world
    WHERE name = 'Australia') ORDER BY name

SELECT name, population FROM world
  WHERE population > (SELECT population FROM world
    WHERE name = 'Canada') AND population < (SELECT 
    population FROM world WHERE name = 'Poland')

SELECT name, concat(ROUND((population/(SELECT population FROM world WHERE name = 'Germany'))*100,0),'%')
  FROM world WHERE continent = 'Europe'

SELECT name
    FROM world
  WHERE gdp > (SELECT MAX(gdp) FROM world WHERE continent = 'Europe')

SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT population FROM world y
        WHERE y.continent=x.continent
          AND y.area > x.area)

SELECT continent, MIN(name) FROM world 
    GROUP BY continent
"SUM and COUNT"

SELECT SUM(population)
FROM world

SELECT MIN(continent) FROM world
GROUP BY continent

SELECT SUM(gdp) FROM world
   WHERE continent = 'Africa'

SELECT COUNT(name) FROM world
   WHERE area >= 1000000

SELECT SUM(population)
   FROM world
  WHERE name = 'Estonia' OR name = 'Latvia' OR name = 'Lithuania'

SELECT continent, COUNT(name)
   FROM world
  GROUP BY continent

SELECT continent, COUNT(name)
   FROM world
  WHERE population >= 10000000
 GROUP BY continent

SELECT continent FROM world x
  WHERE (SELECT SUM(population) FROM world WHERE continent = x.continent) >= 100000000
 GROUP BY continent

"The JOIN operation"

SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'

SELECT id,stadium,team1,team2
  FROM game
 WHERE id = 1012

SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
 WHERE teamid = 'GER'

SELECT team1, team2, player
  FROM game JOIN goal ON (id=matchid)
 WHERE player LIKE 'Mario%'

SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam ON teamid = id
 WHERE gtime<=10

SELECT mdate, teamname
   FROM game JOIN eteam ON team1 = eteam.id
  WHERE coach = 'Fernando Santos'

SELECT player
  FROM goal JOIN game ON matchid = game.id
 WHERE stadium = 'National Stadium, Warsaw'

 
