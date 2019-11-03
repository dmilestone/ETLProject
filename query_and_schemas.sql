CREATE DATABASE "ETLProject"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;
    
-- Create Two Tables
CREATE TABLE suicide (
  country text PRIMARY KEY,
  Suicide_Count_1995 real,
  Suicide_Count_2000 real,
  Suicide_Count_2005 real,
  Suicide_Count_2010 real,
  Suicide_Count_2014 real
);

CREATE TABLE gdp (
  country text PRIMARY KEY,
  Indicator TEXT,
  gdp_1995 bigint,
  gdp_2000 bigint,
  gdp_2005 bigint,
  gdp_2010 bigint,
  gdp_2014 bigint
);

-- Query to check successful load
SELECT * FROM suicide;

SELECT * FROM gdp;


--Create view for 1995 stats
create view suicide_gdp_1995 as
select sid.country, sid.suicide_count_1995, gdp.gdp_1995
FROM suicide sid
INNER JOIN gdp
ON sid.country = gdp.country;

select * from suicide_gdp_1995;


--Create view for 2000 stats
create view suicide_gdp_2000 as
select sid.country, sid.suicide_count_2000, gdp.gdp_2000
FROM suicide sid
INNER JOIN gdp
ON sid.country = gdp.country;

select * from suicide_gdp_2000;


--Create view for 2005 stats
create view suicide_gdp_2005 as
select sid.country, sid.suicide_count_2005, gdp.gdp_2005
FROM suicide sid
INNER JOIN gdp
ON sid.country = gdp.country;

select * from suicide_gdp_2005;


--Create view for 2010 stats
create view suicide_gdp_2010 as
select sid.country, sid.suicide_count_2010, gdp.gdp_2010
FROM suicide sid
INNER JOIN gdp
ON sid.country = gdp.country;

select * from suicide_gdp_2010;


--Create view for 2014 stats
create view suicide_gdp_2014 as
select sid.country, sid.suicide_count_2014, gdp.gdp_2014
FROM suicide sid
INNER JOIN gdp
ON sid.country = gdp.country;

select * from suicide_gdp_2014;

