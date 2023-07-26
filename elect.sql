set timing on;
--query 1
select year, count(*) as TOTAL_FEMALE_CANDIDATE
from election where CAND_SEX='F'
group by year;

--query 2
select year,ST_NAME, count(*) as total
from election
group by YEAR,ST_NAME;

--query 3
select year, sum(TOTVOTPOLL) AS total
from election
where YEAR=1987 AND  PARTYNAME='BJP'
group by year;

--query 4
select ST_NAME, COUNT(*) AS total
from election
where YEAR=2004
group by ST_NAME;

--query 5
select PARTYNAME
FROM(SELECT PARTYNAME, SUM(TOTVOTPOLL) AS VOTES
FROM ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
group by PARTYNAME)
ORDER BY VOTES DESC
FETCH FIRST 5 ROWS ONLY;