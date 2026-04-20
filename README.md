# Hospital Data Analysis

### Capstone Project – Data Fundamentals

---

## Project Overview

This project analyzes hospital patient data to identify disease trends, evaluate doctor workload, and understand treatment cost patterns. The analysis is performed using SQL, Excel, and Python to provide a complete data-driven perspective.

---

## Problem Statement

A hospital maintains records of patients including age, gender, disease, doctor, and treatment cost. The goal is to analyze this data to:

* Identify the most common diseases
* Determine doctor workload
* Calculate treatment cost statistics
* Derive meaningful insights for hospital management

*(Extended analysis includes age groups, gender trends, and cost-based insights.)*

---

## Tools & Technologies Used

* **SQL (MySQL)** – Querying and aggregation
* **Excel** – Pivot tables and analysis
* **Python** – Data processing and visualization

  * Pandas
  * Matplotlib

---

## Project Structure

```
hospital-data-analysis/
│
├── sql query outputs/          # Screenshots of SQL results
├── visualisation outputs/      # Charts and graphs
│
├── hospital_analysis - sql queries.sql
├── hospital_analysis - python code.ipynb
├── visualization_code.ipynb
├── hospital_analysis - excel task.xlsx
├── hospital_data.xlsx
│
└── Hospital Data Analysis - Project Report.pdf
```

---

## Work Done

### SQL Analysis

* Displayed patient records
* Counted patients by disease
* Calculated average treatment cost
* Identified doctor treating the most patients
* Additional queries (age groups, revenue, high-cost patients, etc.)

---

### Excel Analysis

* Pivot table:

  * Rows → Disease
  * Values → Patient Count
* Additional sheets:

  * Doctor analysis
  * Gender & age analysis
  * Summary dashboard

---

### Python Analysis

* Loaded and explored dataset
* Created new column: **cost_category (Low / Medium / High)**
* Performed group-based analysis
* Generated visualizations:

  * Disease distribution (Pie chart)
  * Doctor workload (Bar chart)
  * Patient count vs cost (Scatter plot)

---

## Key Insights

* Dengue and Flu have the highest patient count (most common diseases) 
* Heart Disease has the highest treatment cost despite fewer patients
* Dr Patil treats the most patients and generates the highest revenue
* Doctor workload is unevenly distributed
* Female patients are higher in number, but males have slightly higher average cost
* Adults form the largest patient group

---

## Dataset Details

* Total Records: **150 patients** 

* Columns:

  * patient_id
  * age
  * gender
  * disease
  * doctor
  * treatment_cost

* Diseases: 10 types (Flu, Dengue, Heart Disease, etc.)

* Doctors: 5 doctors

---

## Unique Features

* Dataset expanded from sample to realistic 150 records
* Multi-tool analysis (SQL + Excel + Python)
* Custom feature: **cost_category**
* Age-group segmentation (Child / Adult / Senior)
* Combination of statistical and visual insights

---

## Future Improvements

* Add Power BI dashboard
* Build ML model to predict treatment cost
* Include more features (insurance, medication cost, etc.)
* Develop real-time analytics dashboard

---

## Project Report

Detailed report available in:

```
Hospital Data Analysis - Project Report.pdf
```

---

## Author

* **Name:** Srijoni Banerji
* **Roll Number:** 2305418
* **Program:** B.Tech CSE

---

## Conclusion

This project demonstrates how structured data analysis using multiple tools can help extract meaningful insights from healthcare data, improving decision-making and operational efficiency.
