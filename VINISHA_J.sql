set timing on;
--Question 1 solution
<<<<<<< HEAD
select year, count(*) as TOTAL_FEMALE_CANDIDATE
=======
select year, count(*) as TOTAL_FEMALE_CANDIDATES_EACH_YEAR
>>>>>>> ca0c1f046ffb70cb5a0ec00383d19b1e21918b52
from election where CAND_SEX='F'
group by YEAR;

--Question 2 solution
<<<<<<< HEAD
select year,ST_NAME, count(*) as total
=======
select year,ST_NAME, count(*) as TOTAL_CANDIDATES_EACH_YEAR
>>>>>>> ca0c1f046ffb70cb5a0ec00383d19b1e21918b52
from election
group by YEAR,ST_NAME;

--Question 3 solution
<<<<<<< HEAD
select year, sum(TOTVOTPOLL) AS total
=======
select year, sum(TOTVOTPOLL) AS TOTAL_VOTES_BJP
>>>>>>> ca0c1f046ffb70cb5a0ec00383d19b1e21918b52
from election
where YEAR=1987 AND  PARTYNAME='BJP'
group by YEAR;

--Question 4 solution
<<<<<<< HEAD
select ST_NAME, COUNT(*) AS total
=======
select ST_NAME, COUNT(*) AS TOTAL_CANDIDATES_2004
>>>>>>> ca0c1f046ffb70cb5a0ec00383d19b1e21918b52
from election
where YEAR=2004
group by ST_NAME;

--Question 5 solution
select PARTYNAME
<<<<<<< HEAD
FROM(SELECT PARTYNAME, SUM(TOTVOTPOLL) AS VOTES
FROM ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
group by PARTYNAME)
ORDER BY VOTES DESC
=======
FROM(SELECT PARTYNAME, SUM(TOTVOTPOLL) AS VOTES_TOP5
FROM ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
group by PARTYNAME)
ORDER BY VOTES_TOP5 DESC
>>>>>>> ca0c1f046ffb70cb5a0ec00383d19b1e21918b52
FETCH FIRST 5 ROWS ONLY;