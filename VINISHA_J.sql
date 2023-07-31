set timing on;
--Question 1 solution
select year, count(*) as TOTAL_FEMALE_CANDIDATE
from election where CAND_SEX='F'
group by YEAR;

--Question 2 solution
select year,ST_NAME, count(*) as total
from election
group by YEAR,ST_NAME;

--Question 3 solution
select year, sum(TOTVOTPOLL) AS total
from election
where YEAR=1987 AND  PARTYNAME='BJP'
group by YEAR;

--Question 4 solution
select ST_NAME, COUNT(*) AS total
from election
where YEAR=2004
group by ST_NAME;

--Question 5 solution
select PARTYNAME
FROM(SELECT PARTYNAME, SUM(TOTVOTPOLL) AS VOTES
FROM ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
group by PARTYNAME)
ORDER BY VOTES DESC
FETCH FIRST 5 ROWS ONLY;