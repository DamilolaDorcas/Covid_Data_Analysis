SELECT * FROM covid_19_data
--Recover and compare countries with the highest recoveries, deaths and conformed cases
SELECT countryregion, SUM(confirmed) AS sum_cases, SUM(recovered) AS sum_recovery,SUM(deaths) AS sum_deaths 
From covid_19_data 
GROUP BY countryregion
ORDER BY SUM(recovered) DESC
LIMIT 5

