select year,count(cand_sex) from election where cand_sex='F'
group by year;