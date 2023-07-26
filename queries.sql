
set timing on;
--SQL query to find total count of female participated in each year
 --create index inde on election(year,st_name);


 select year,count(cand_name),count(distinct(cand_name))
 from election where cand_sex='F'group by year;
/*select cand_name, count(cand_name) from election where year=1996 and cand_sex='F'
group by cand_name 
having count(cand_name)>1;
select * from election where cand_name='S.V.B.Reddy';*/


--2 total candidates who paricipated in election at each state and year
select st_name ,year,count(cand_name),count(distinct(cand_name))
from election 
group by year,st_name
order by st_name,year;

--3 sql query to find total votes BJP got in each state in the year of 1987

select st_name as state ,sum(totvotpoll) as votes 
from election where partyname='BJP' and year=1987
group by st_name;

select partyname , PARTYABBRE from election where year=2014 order by partyname;
--4   sql query to find total candidates who participated in the election in each state in the year of 2004
select st_name, count(*),count(distinct(cand_name))
from election where year=2004
group by st_name
order by st_name asc;

/*5 write a sql query to what are the top 5 parties theat get the most votes
in uttur pradesh in the year of 2014*/


select partyname from select e.partyname,count(totvotpoll) from election e
 where st_name='Assam'
and year=2004 
group by e.partyname 
order by count(totvotpoll) desc
;

