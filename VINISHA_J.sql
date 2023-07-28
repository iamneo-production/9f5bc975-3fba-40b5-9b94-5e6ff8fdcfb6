set timing on;
--Query 1
select year, count(*) as TOTAL_FEMALE_CANDIDATE
from election where CAND_SEX='F'
group by year;

--Query 2
select year,ST_NAME, count(*) as total
from election
group by YEAR,ST_NAME;

--Query 3
select year, sum(TOTVOTPOLL) AS total
from election
where YEAR=1987 AND  PARTYNAME='BJP'
group by YEAR;

--Query 4
select ST_NAME, COUNT(*) AS total
from election
where YEAR=2004
group by ST_NAME;

--Query 5
select PARTYNAME
FROM(SELECT PARTYNAME, SUM(TOTVOTPOLL) AS VOTES
FROM ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
group by PARTYNAME)
ORDER BY VOTES DESC
FETCH FIRST 5 ROWS ONLY;