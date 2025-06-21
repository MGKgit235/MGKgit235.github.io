DROP TABLE IF EXISTS covid_data;
CREATE TABLE covid_data (
    Sno INTEGER,
    Date TEXT,
    State_UnionTerritory TEXT,
    ConfirmedIndianNational INTEGER,
    ConfirmedForeignNational INTEGER,
    Cured INTEGER,
    Deaths INTEGER,
    Confirmed INTEGER
);

DROP TABLE IF EXISTS vaccination_data;
CREATE TABLE vaccination_data (
    Updated_On TEXT,
    State TEXT,
    Total_Doses_Administered REAL,
    Sessions REAL,
    Sites REAL,
    First_Dose_Administered REAL,
    Second_Dose_Administered REAL,
    Male_Doses_Administered REAL,
    Female_Doses_Administered REAL,
    Transgender_Doses_Administered REAL,
    Covaxin_Doses_Administered REAL,
    CoviShield_Doses_Administered REAL,
    Sputnik_V_Doses_Administered REAL,
    AEFI REAL,
    Doses_18_44 REAL,
    Doses_45_60 REAL,
    Doses_60_plus REAL,
    Vaccinated_18_44 REAL,
    Vaccinated_45_60 REAL,
    Vaccinated_60_plus REAL,
    Male_Vaccinated REAL,
    Female_Vaccinated REAL,
    Transgender_Vaccinated REAL,
    Total_Individuals_Vaccinated REAL
);