Select * from Election;


Select year,count(*) AS female_candidates 
from Election where CAND_SEX='F'
GROUP BY year
ORDER BY year;