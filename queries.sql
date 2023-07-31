
set timing on;

--SQL query to find total count of female participated in each year

 select year,count(*)
 from election where cand_sex='F'group by year;

--2 total candidates who  paricipated in election at each state and year
select st_name ,year,count(*)
from election 
group by year,st_name
order by year;

--3 sql query to find total votes BJP got in each state in the year of 1987

select st_name as state ,sum(totvotpoll) as Total_votes 
from election where partyname='BJP' and year=1987
group by st_name;


--4   sql query to find total candidates who participated in the election in each state in the year of 2004
select st_name, count(*)
from election where year=2004
group by st_name
order by st_name asc;

/*5 write a sql query to what are the top 5 parties theat get the most votes
in uttur pradesh in the year of 2014*/

SELECT PARTYNAME 
FROM (SELECT PARTYNAME, SUM(TOTVOTPOLL) AS VOTES
      FROM ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
      GROUP BY PARTYNAME
    )ORDER BY VOTES DESC
    FETCH FIRST 5 ROWS ONLY;

