--SQL query to find total count of female participated in each year

select year,count(cand_sex) from election where cand_sex='F'
group by year order by year ASC;