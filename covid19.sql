SELECT *
from covid_data

select *
from vaccination_data

/*States with most number of deaths*/
select 
state_unionterritory,
sum(deaths) as total_deaths
from covid_data
GROUP BY state_unionterritory
ORDER BY total_deaths DESC
LIMIT 10

/*States with most number of cured*/
select 
state_unionterritory,
sum(cured) as total_cured
from covid_data
GROUP BY state_unionterritory
ORDER BY total_cured DESC
LIMIT 10

/*States with most number of confirmed cases*/
select 
state_unionterritory,
sum(confirmed) as total_confirmed_cases
from covid_data
GROUP BY state_unionterritory
ORDER BY total_confirmed_cases DESC
limit 10

/*States with most number of confirmed foreign cases*/
select 
state_unionterritory,
sum(ConfirmedForeignNational) as total_confirmed_foreign
from covid_data
WHERE ConfirmedForeignNational is not NULL
GROUP BY state_unionterritory
ORDER BY total_confirmed_foreign DESC
limit 10

/*States with the most vaccinations*/
SELECT 
  vaccination_data.state AS v_state,
  covid_data.state_unionterritory AS c_state,
  SUM(vaccination_data.Total_Individuals_Vaccinated) AS total_vaccinated
FROM vaccination_data
LEFT JOIN covid_data 
  ON vaccination_data.state = covid_data.state_unionterritory
GROUP BY vaccination_data.state, covid_data.state_unionterritory
ORDER BY total_vaccinated DESC
LIMIT 10
;

/*states with the most doses administered*/
SELECT 
  vaccination_data.state AS v_state,
  covid_data.state_unionterritory AS c_state,
  SUM(vaccination_data.Total_Doses_Administered) AS total_doses
FROM vaccination_data
LEFT JOIN covid_data 
  ON vaccination_data.state = covid_data.state_unionterritory
GROUP BY vaccination_data.state, covid_data.state_unionterritory
ORDER BY total_doses DESC
LIMIT 10
;


/*gender disparity*/

SELECT 
  SUM(Male_Doses_Administered) AS total_males,
  SUM(Female_Doses_Administered) AS total_females,
  SUM(Male_Doses_Administered) - SUM(Female_Doses_Administered) AS gender_gap
FROM vaccination_data;


select 
    sum(Doses_18_44) as total_18to14,
    sum(Doses_45_60) as total_45to60,
    sum(Doses_60_plus) as total_60plus,
    sum(Doses_18_44)+sum(Doses_45_60)+sum(Doses_60_plus) as total_ages
from vaccination_data
ORDER by total_ages
limit 10

/*most vaccinated age groups*/
SELECT 
    SUM(Doses_18_44) AS total_18to44,
    SUM(Doses_45_60) AS total_45to60,
    SUM(Doses_60_plus) AS total_60plus,
    SUM(Doses_18_44) + SUM(Doses_45_60) + SUM(Doses_60_plus) AS total_ages,

    CASE 
        WHEN SUM(Doses_18_44) >= SUM(Doses_45_60) 
             AND SUM(Doses_18_44) >= SUM(Doses_60_plus) THEN '18-44'
        WHEN SUM(Doses_45_60) >= SUM(Doses_60_plus) THEN '45-60'
        ELSE '60+'
    END AS most_vaccinated_age_group

FROM vaccination_data;

select *
from statewise_testing

