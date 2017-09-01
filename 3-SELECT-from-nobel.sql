-- #1 Winners from 1950
-- Change the query shown so that it displays Nobel prizes for 1950.

SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950;

-- #2 1962 Literature
-- Show who won the 1962 prize for Literature.

SELECT winner
FROM nobel
WHERE yr = 1962
AND subject = 'Literature';

-- #3 Albert Einstein
-- Show the year and subject that won 'Albert Einstein' his prize.

SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';

-- #4 Recent Peace Prizes
-- Give the name of the 'Peace' winners since the year 2000, including 2000.

SELECT winner
FROM nobel
WHERE subject = 'Peace'
AND yr > 1999;

-- #5 Literature in the 1980's
-- Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.

SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Literature'
AND yr > 1979
AND yr < 1990;

-- #6 Only Presidents
-- Show all details of the presidential winners: Theodore Roosevelt, Woodrow Wilson, Jimmy Carter, Barack Obama.

SELECT yr, subject, winner
FROM nobel
WHERE winner IN ('Theodore Roosevelt',
                 'Woodrow Wilson',
                 'Jimmy Carter',
                 'Barack Obama');

-- #7 John
-- Show the winners with first name John

SELECT winner
FROM nobel
WHERE winner LIKE 'John%';

-- #8 Chemistry and Physics from different years
-- Show the Physics winners for 1980 together with the Chemistry winners for 1984.

SELECT yr, subject, winner
FROM nobel
WHERE (subject = 'Physics' AND yr = 1980)
OR (subject = 'Chemistry' AND yr = 1984);

-- #9 Exclude Chemists and Medics
-- Show the winners for 1980 excluding the Chemistry and Medicine

SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980
AND subject != 'Chemistry'
AND subject != 'Medicine';

-- #10 Early Medicine, Late Literature
/* Show who won a 'Medicine' prize in an early year (before 1910, not including 1910) 
together with winners of a 'Literature' prize in a later year (after 2004, including 2004) */

SELECT yr, subject, winner
FROM nobel
WHERE (subject = 'Medicine' AND yr < 1910)
OR (subject = 'Literature' AND yr > 2003);

-- #11 Umlaut
-- Find all details of the prize won by PETER GRÜNBERG

SELECT yr, subject, winner
FROM nobel
WHERE winner = 'Peter Grünberg';

-- #12 Apostrophe
-- Find all details of the prize won by EUGENE O'NEILL

SELECT yr, subject, winner
FROM nobel
WHERE winner = 'Eugene O''Neill';

-- #13 Knights of the realm
-- List the winners, year and subject where the winner starts with Sir.
-- Show the the most recent first, then by name order.

