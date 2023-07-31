

SET TIMING ON;
--code 1
select year,count(*) as TOTAL_FEMALE_CANDIDATE
from election where CAND_SEX='F'
group by YEAR;

--code 2
select year,ST_NAME,count(*) as total
from election 
group by YEAR,ST_NAME;

--code 3
select year,sum(TOTVOTPOLL) as total
from election 
where YEAR=1987 and PARTYNAME='BJP'
group by year;

--code 4
select ST_NAME,COUNT(*) as total
from election 
where YEAR=2004
group by ST_NAME;

--code 5
SELECT PARTYNAME 
FROM (SELECT PARTYNAME, SUM(TOTVOTPOLL) AS VOTES
      FROM ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
      GROUP BY PARTYNAME
    )ORDER BY VOTES DESC
    FETCH FIRST 5 ROWS ONLY;