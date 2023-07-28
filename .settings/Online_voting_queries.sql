Set Timing On;
--query 1
SELECT year,count(*) as female_candidates
from election where cand_sex='F'
group by year;


--query 2
SELECT st_name,year,count(*) as
total_candidates from ELECTION
group by st_name,year;


--query 3
SELECT year,sum(totvotpoll) as
total_votes from ELECTION
where year=1987 and partyabbre='BJP'
group by year;


--query 4
SELECT st_name,count(*) AS
total_candidates from Election 
where year=2004
group by st_name;


--query 5
SELECT Partyname from(SELECT PARTYNAME,sum(totvotpoll) as votes
from Election where year=2014 and st_name ='Uttar Pradesh'
group by Partyname) order by votes DESC
fetch first 5 rows only;

