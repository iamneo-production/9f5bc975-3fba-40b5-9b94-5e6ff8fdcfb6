SET TIMING ON;
--query:1
SELECT year,count(*) as TOTAL_FEMALE_CANDIDATES
from Election where CAND_SEX='F'
group by year
order by year ASC;

--query:2
SELECT year,ST_NAME,count(*) as Total
from Election 
group by year,ST_NAME;

--query:3
SELECT ST_NAME,sum(TOTVOTPOLL) as Total_Votes
from Election 
where YEAR=1987 and PARTYNAME='BJP'
group by ST_NAME;

--query:4
SELECT ST_NAME,COUNT(*) as Total_Candidates
from Election 
where YEAR=2004
group by ST_NAME
order by ST_NAME ASC;

--query:5
SELECT PARTYNAME from (SELECT PARTYNAME, SUM(TOTVOTPOLL) AS VOTES
from Election WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
GROUP BY PARTYNAME) ORDER BY VOTES DESC
FETCH FIRST 5 ROWS only;