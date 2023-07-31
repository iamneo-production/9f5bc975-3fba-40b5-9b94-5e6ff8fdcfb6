

SET TIMING ON;
<<<<<<< HEAD:NagaVineetha_Polina.sql
--question 1
=======
--code 1
>>>>>>> 788de5e111f05a90824d6684ae71b0da8583e3a2:V.K.Karthik.sql
select year,count(*) as TOTAL_FEMALE_CANDIDATE
from election where CAND_SEX='F'
group by YEAR;

<<<<<<< HEAD:NagaVineetha_Polina.sql
--question 2
=======
--code 2
>>>>>>> 788de5e111f05a90824d6684ae71b0da8583e3a2:V.K.Karthik.sql
select year,ST_NAME,count(*) as total
from election 
group by YEAR,ST_NAME;

<<<<<<< HEAD:NagaVineetha_Polina.sql
--question 3
=======
--code 3
>>>>>>> 788de5e111f05a90824d6684ae71b0da8583e3a2:V.K.Karthik.sql
select year,sum(TOTVOTPOLL) as total
from election 
where YEAR=1987 and PARTYNAME='BJP'
group by year;

<<<<<<< HEAD:NagaVineetha_Polina.sql
--question 4
=======
--code 4
>>>>>>> 788de5e111f05a90824d6684ae71b0da8583e3a2:V.K.Karthik.sql
select ST_NAME,COUNT(*) as total
from election 
where YEAR=2004
group by ST_NAME;

<<<<<<< HEAD:NagaVineetha_Polina.sql
--question 5
SELECT PARTYNAME
FROM(SELECT PARTYNAME, SUM(TOTVOTPOLL)AS VOTES
FROM ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
GROUP BY PARTYNAME)
ORDER BY VOTES DESC
FETCH FIRST 5 ROWS ONLY;
=======
--code 5
SELECT PARTYNAME 
FROM (SELECT PARTYNAME, SUM(TOTVOTPOLL) AS VOTES
      FROM ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
      GROUP BY PARTYNAME
    )ORDER BY VOTES DESC
    FETCH FIRST 5 ROWS ONLY;
>>>>>>> 788de5e111f05a90824d6684ae71b0da8583e3a2:V.K.Karthik.sql
