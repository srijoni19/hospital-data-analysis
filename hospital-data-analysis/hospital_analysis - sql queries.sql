--  Hospital Data Analysis - SQL Tasks
--  Capstone Project | Data Fundamentals

-- SETUP: Create the database table and load data
-- Run this section first to initialise the schema.

CREATE TABLE IF NOT EXISTS hospital_data (
    patient_id     INT PRIMARY KEY,
    age            INT,
    gender         VARCHAR(10),
    disease        VARCHAR(50),
    doctor         VARCHAR(50),
    treatment_cost INT
);

-- Load from CSV and use MySQL:
-- LOAD DATA INFILE 'hospital_data.csv'
-- INTO TABLE hospital_data
-- FIELDS TERMINATED BY ','
-- IGNORE 1 ROWS;

-- TASK 1: Display all patient records
SELECT *
FROM hospital_data;

-- TASK 2: Calculate total treatment cost (overall revenue)
SELECT SUM(treatment_cost) AS total_revenue
FROM hospital_data;


-- TASK 3: Identify the most common disease (by patient count)
SELECT disease,
       COUNT(*) AS patient_count
FROM hospital_data
GROUP BY disease
ORDER BY patient_count DESC
LIMIT 1;

-- TASK 4: Identify which doctor treats the most patients
SELECT doctor,
       COUNT(*) AS patients_treated
FROM hospital_data
GROUP BY doctor
ORDER BY patients_treated DESC;

-- TASK 5: Calculate average treatment cost
SELECT ROUND(AVG(treatment_cost), 2) AS avg_treatment_cost
FROM hospital_data;

-- TASK 6: Disease-wise total treatment cost
SELECT disease,
       COUNT(*)               AS patient_count,
       SUM(treatment_cost)    AS total_cost,
       ROUND(AVG(treatment_cost), 2) AS avg_cost
FROM hospital_data
GROUP BY disease
ORDER BY total_cost DESC;

-- TASK 7: Gender-wise patient distribution and average cost
SELECT gender,
       COUNT(*)               AS patient_count,
       ROUND(AVG(treatment_cost), 2) AS avg_cost
FROM hospital_data
GROUP BY gender;

-- TASK 8: Identify the highest-value (most expensive) patient record
SELECT *
FROM hospital_data
ORDER BY treatment_cost DESC
LIMIT 1;

-- TASK 9: Doctor-wise revenue (total treatment cost handled)
SELECT doctor,
       SUM(treatment_cost) AS total_revenue,
       COUNT(*)            AS patients_treated
FROM hospital_data
GROUP BY doctor
ORDER BY total_revenue DESC;

-- TASK 10: Age group analysis
--          (Child < 18 | Adult 18-59 | Senior 60+)
SELECT
    CASE
        WHEN age < 18              THEN 'Child'
        WHEN age BETWEEN 18 AND 59 THEN 'Adult'
        ELSE                            'Senior'
    END AS age_group,
    COUNT(*)               AS patients,
    ROUND(AVG(treatment_cost), 2) AS avg_cost
FROM hospital_data
GROUP BY age_group
ORDER BY avg_cost DESC;

-- TASK 11: Identify best-performing doctor
-- (highest avg cost per patient - proxy for complexity)
SELECT doctor,
       COUNT(*)               AS patients,
       ROUND(AVG(treatment_cost), 2) AS avg_cost_per_patient
FROM hospital_data
GROUP BY doctor
ORDER BY avg_cost_per_patient DESC
LIMIT 1;

-- TASK 12: List patients with treatment cost above average
SELECT patient_id, age, gender, disease, doctor, treatment_cost
FROM hospital_data
WHERE treatment_cost > (SELECT AVG(treatment_cost) FROM hospital_data)
ORDER BY treatment_cost DESC;
