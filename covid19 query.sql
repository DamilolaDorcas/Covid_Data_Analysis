SELECT * FROM covid_19_data
--Recover and compare countries with the highest recoveries, deaths and conformed cases
SELECT countryregion, SUM(confirmed) AS sum_cases, SUM(recovered) AS sum_recovery,SUM(deaths) AS sum_deaths 
From covid_19_data 
GROUP BY countryregion
ORDER BY SUM(recovered) DESC
LIMIT 5

--Retrieve the records for the following observation dates - 1/22/2020, 1/27/2020, 1/31/2020
select * from covid_19_data 
where observationdate BETWEEN '2020-01-22' AND '2020-01-31'

--Retrieve a summary of all the records. This should include the following information for each country/region:
-- The total number of confirmed cases 
-- The total number of deaths
-- The total number of recoveries
select SUM(confirmed) AS sumconfirmed, SUM(recovered) AS sumrecovered, SUM(deaths) AS sumdeaths from covid_19_data

--Retrieve the number of confirmed cases, deaths, and recoveries for MainlandChina
select confirmed, deaths, recovered, countryregion from covid_19_data 
where countryregion LIKE 'Mainland China'

--Retrieve information for the top 5 countries with the highest confirmed cases.
SELECT  SUM(confirmed) AS Top_Confirmed, countryregion
FROM covid_19_data
GROUP BY countryregion
ORDER BY SUM(confirmed) desc
LIMIT  5 


--Retrieve information for the top 5 countries with the highest death cases specifically for 27th and 31st of January, 2020.
select countryregion,observationdate, SUM(deaths) AS Top_Deaths from covid_19_data 
WHERE observationdate = '2020-01-31' 
Group by countryregion, observationdate
ORDER BY SUM(deaths)DESC


select countryregion,observationdate, SUM(deaths) AS Top_Deaths from covid_19_data 
WHERE observationdate = '2020-01-27' 
Group by countryregion, observationdate
ORDER BY SUM(deaths)DESC



