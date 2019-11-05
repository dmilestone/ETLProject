-- Create Two Tables
CREATE TABLE suicide (
  id serial, 
	country text,
  year int,
  suicide_total int
);

CREATE TABLE gdp (
	id serial,
  country text,
  year int,
  gdp int
);

-- Query to check successful load
SELECT * FROM suicide;

SELECT * FROM gdp;

-- Suicide Total by Country for All Years
SELECT country, SUM(suicide_total) AS "Suicide Total by Country for All Years"
FROM suicide
GROUP BY country;

-- GDP Total by Country for All Years
SELECT country, SUM(gdp) AS "GDP Total by Country for All Years"
FROM gdp
GROUP BY country;

--Joined Suicide and GDP totals for all years
select sid.country, sum(suicide_total) as sui_tot, Sum(gdp.gdp) as gdp_tot
FROM suicide sid
INNER JOIN gdp
ON sid.country = gdp.country
group by sid.country;



