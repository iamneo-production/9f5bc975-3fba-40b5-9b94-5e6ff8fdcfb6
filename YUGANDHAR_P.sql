
set timing on;

--1

 select year,count(*)
 from election where cand_sex='F'group by year;

--2 
select st_name ,year,count(*)
from election 
group by year,st_name
order by year;

--3 

select st_name as state ,sum(totvotpoll) as Total_votes 
from election where partyname='BJP' and year=1987
group by st_name;


--4  
select st_name, count(*)
from election where year=2004
group by st_name
order by st_name asc;

--5 

SELECT PARTYNAME 
FROM (SELECT PARTYNAME, SUM(TOTVOTPOLL) AS VOTES
      FROM ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
      GROUP BY PARTYNAME
    )ORDER BY VOTES DESC
    FETCH FIRST 5 ROWS ONLY;

