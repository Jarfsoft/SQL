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

