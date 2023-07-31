--CREATE INDEX INDEX_ELECTION ON ELECTION(YEAR);
SET TIMING ON;
<<<<<<< HEAD
<<<<<<< HEAD:V.K.Karthik.sql
--code  1
=======
--question 1
>>>>>>> 6003cbcfd160bcb771271dcd9be1f0a0297fee5b:NagaVineetha_Polina.sql
=======
--question 1
>>>>>>> ca0c1f046ffb70cb5a0ec00383d19b1e21918b52
select year,count(*) as TOTAL_FEMALE_CANDIDATE
from election where CAND_SEX='F'
group by year;

<<<<<<< HEAD
<<<<<<< HEAD:V.K.Karthik.sql
--code  2
=======
--question 2
>>>>>>> 6003cbcfd160bcb771271dcd9be1f0a0297fee5b:NagaVineetha_Polina.sql
=======
--question 2
>>>>>>> ca0c1f046ffb70cb5a0ec00383d19b1e21918b52
select year,ST_NAME,count(*) as total
from election 
group by YEAR,ST_NAME;

<<<<<<< HEAD
<<<<<<< HEAD:V.K.Karthik.sql
--code  3
=======
--question 3
>>>>>>> 6003cbcfd160bcb771271dcd9be1f0a0297fee5b:NagaVineetha_Polina.sql
=======
--question 3
>>>>>>> ca0c1f046ffb70cb5a0ec00383d19b1e21918b52
select year,sum(TOTVOTPOLL) as total
from election 
where YEAR=1987 and PARTYNAME='BJP'
group by year;

<<<<<<< HEAD
<<<<<<< HEAD:V.K.Karthik.sql
--code  4
=======
--question 4
>>>>>>> 6003cbcfd160bcb771271dcd9be1f0a0297fee5b:NagaVineetha_Polina.sql
=======
--question 4
>>>>>>> ca0c1f046ffb70cb5a0ec00383d19b1e21918b52
select ST_NAME,COUNT(*) as total
from election 
where YEAR=2004
group by ST_NAME;

<<<<<<< HEAD
<<<<<<< HEAD:V.K.Karthik.sql
--code  5
SELECT PARTYNAME 
FROM (SELECT PARTYNAME, SUM(TOTVOTPOLL) AS VOTES
      FROM ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
      GROUP BY PARTYNAME
    )ORDER BY VOTES DESC
    FETCH FIRST 5 ROWS ONLY;
=======
=======
>>>>>>> ca0c1f046ffb70cb5a0ec00383d19b1e21918b52
--question 5
SELECT PARTYNAME
FROM(SELECT PARTYNAME, SUM(TOTVOTPOLL)AS VOTES
FROM ELECTION WHERE YEAR=2014 AND ST_NAME='Uttar Pradesh'
GROUP BY PARTYNAME)
ORDER BY VOTES DESC
<<<<<<< HEAD
FETCH FIRST 5 ROWS ONLY;
>>>>>>> 6003cbcfd160bcb771271dcd9be1f0a0297fee5b:NagaVineetha_Polina.sql
=======
FETCH FIRST 5 ROWS ONLY;
>>>>>>> ca0c1f046ffb70cb5a0ec00383d19b1e21918b52
