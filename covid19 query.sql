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

