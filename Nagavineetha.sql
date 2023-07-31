
SET TIMING ON;

--1
 SELECT year,count(*) as TOTAL_FEMALE_CANDIDATES
from  election where CAND_SEX='F'
group  by YEAR;  
 

--2   
SELECT  year,ST_NAME,count(*) as TOTAL_CANDIDATES
from   election 
group  by YEAR,ST_NAME;


--3
 SELECT year, sum(TOTVOTPOLL) as TOTAL_VOTES
from  election 
where  YEAR=1987 and PARTYNAME='BJP'
group by year;


--4
SELECT  ST_NAME, COUNT(*) as TOTAL_CANDIDATES
 from  election 
where YEAR=2004
group by ST_NAME;


--5
 SELECT   PARTYNAME 
 FROM (SELECT PARTYNAME, SUM(TOTVOTPOLL) AS TOTAL_VOTES
      FROM  ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
      GROUP BY PARTYNAME
    )ORDER BY  TOTAL_VOTES DESC
    FETCH FIRST  5 ROWS ONLY;