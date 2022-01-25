--what countries have won the most medals, and in what games?
select m.country, o.year, o.session, sum(o.medal) 
from olympic_medal o
join country_master m on m.country_code=o.country_code
group by m.country,o.year, o.session
order by 4 desc;

--what countries have the highest GDP Per Capita, and in what years?
select c.country, g.year, g.gdp_per_capita 
from gdp_history g
join country_master c on c.country_code=g.country_code
order by 3 desc, 2;

--when we normalize for Per Capita GDP, what countries have won the most  Olympic medals, and when?
select c.country, c.country_code, o.year, o.session, sum(o.medal), g.gdp_per_capita, 1000*sum(o.medal)/g.gdp_per_capita as "MedalsPerGDPPerCapita"
from olympic_medal o
join country_master c on c.country_code=o.country_code
join gdp_history g on g.country_code=o.country_code and g.year = o.year
group by c.country, c.country_code, o.year, o.session, g.gdp_per_capita
order by 7 desc;