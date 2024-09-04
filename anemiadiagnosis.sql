drop database HealthData;
create DATABASE HealthData;
USE HealthData;
CREATE TABLE AnemiaPatients (
    PatientID INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(10),
    Hemoglobin_Level FLOAT,
    Iron_Level FLOAT,
    Anemia_Diagnosis VARCHAR(3)
);

INSERT INTO AnemiaPatients (PatientID, Age, Gender, Hemoglobin_Level, Iron_Level, Anemia_Diagnosis) VALUES
(1, 45, 'Male', 12.5, 55, 'Yes'),
(2, 60, 'Female', 10.0, 35, 'Yes'),
(3, 35, 'Male', 14.0, 70, 'No'),
(4, 50, 'Female', 11.2, 60, 'Yes'),
(5, 25, 'Male', 13.5, 80, 'No'),
(6, 30, 'Female', 9.5, 40, 'Yes'),
(7, 55, 'Male', 12.0, 65, 'Yes'),
(8, 42, 'Female', 13.8, 85, 'No'),
(9, 36, 'Male', 14.5, 90, 'No'),
(10, 29, 'Female', 10.5, 45, 'Yes'),
(11, 48, 'Male', 13.0, 75, 'No'),
(12, 39, 'Female', 11.8, 50, 'Yes'),
(13, 53, 'Male', 12.3, 60, 'Yes'),
(14, 31, 'Female', 13.9, 88, 'No'),
(15, 62, 'Male', 11.0, 40, 'Yes');
select*from AnemiaPatients;
select Gender,
 avg(Hemoglobin_Level) as Hemoglobin_Level,
avg(Iron_Level)  as Iron_Level
FROM 
    AnemiaPatients
GROUP BY 
    Gender;
    SELECT 
    Anemia_Diagnosis,
    AVG(Hemoglobin_Level) AS Avg_Hemoglobin,
    AVG(Iron_Level) AS Avg_Iron
FROM 
    AnemiaPatients
GROUP BY 
    Anemia_Diagnosis;
SELECT 
    Gender,
    COUNT(*) AS AnemiaCount
FROM 
    AnemiaPatients
WHERE 
    Anemia_Diagnosis = 'Yes'
GROUP BY 
    Gender;
    SELECT Gender, AVG(Age) AS Average_Age
FROM AnemiaPatients
GROUP BY Gender;
SELECT MAX(Iron_Level) AS Max_Iron_Level, MIN(Iron_Level) AS Min_Iron_Level
FROM AnemiaPatients;
SELECT STDEV(Hemoglobin_Level) AS StdDev_Hemoglobin_Level
FROM AnemiaPatients;

 