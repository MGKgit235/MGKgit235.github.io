COPY covid_data 
FROM 'D:\covid\covid_19_india.csv' 
DELIMITER ',' CSV HEADER;

COPY vaccination_data
FROM 'D:\covid\covid_vaccine_statewise.csv' 
DELIMITER ',' CSV HEADER;