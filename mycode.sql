CREATE INDEX INDEX_EL ON ELECTION(YEAR);

SET TIMING ON;
--query 1
select year,count(*) as TOTAL_FEMALE_CANDIDATE
from election where CAND_SEX='F'
group by YEAR;

--query 2
select year,ST_NAME,count(*) as TOTAL_CANDIDATES
from election 
group by YEAR,ST_NAME;

--query 3
select year,sum(TOTVOTPOLL) as TOTAL_VOTES
from election 
where YEAR=1987 and PARTYNAME='BJP'
group by year;

--query 4
select ST_NAME,COUNT(*) as TOTAL_CANDIDATES
from election 
where YEAR=2004
group by ST_NAME;

--query 5
SELECT PARTYNAME 
FROM (SELECT PARTYNAME, SUM(TOTVOTPOLL) AS VOTES
      FROM ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
      GROUP BY PARTYNAME
    )ORDER BY VOTES DESC
    FETCH FIRST 5 ROWS ONLY;
