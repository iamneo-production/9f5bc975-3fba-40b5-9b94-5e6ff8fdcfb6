select year,count(*) as female
from election where CAND_SEX='F'
group by YEAR;


select year,ST_NAME,count(*) as total
from election 
group by YEAR,ST_NAME;


select ST_NAME,year,PARTYNAME,sum(TOTVOTPOLL) as total
from election 
group by ST_NAME,year,PARTYNAME
HAVING YEAR=1987 and PARTYNAME='BJP';


select ST_NAME,COUNT(*) as total
from election 
where YEAR=2004
group by ST_NAME;

\
select top 5 PARTYNAME,YEAR,ST_NAME,SUM(TOTVOTPOLL) AS TOTAL
from election 
GROUP BY PARTYNAME,YEAR,ST_NAME
having YEAR=2014 and ST_NAME='UTTAR PRADESH'
ORDER BY TOTAL DESC;
\