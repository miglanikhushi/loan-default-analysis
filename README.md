# Loan Default Risk Analysis
Loan Default Risk Analysis using Python, SQL, and Power BI

## 📍 Project Overview
This project focuses on analyzing borrower and loan characteristics to identify key patterns associated with **loan repayment failure (default risk)**.  
The goal is to build a portfolio-level understanding of default behavior using structured analysis across:

✅ **Python (Data Cleaning + EDA)**  
✅ **SQL (Risk Segmentation + Business Insights)**  
✅ **Power BI (Dashboard + Storytelling)**  

---

## 🎯 Business Problem Statement
To analyze borrower and loan characteristics to identify patterns associated with repayment failure and to build a segmented understanding of loan default risk across the portfolio.

The dataset includes borrower-level and loan-level attributes that allow a portfolio-based risk analysis.

---

## ✅ Project Objectives
1. Clean and preprocess the dataset to ensure accurate analysis  
2. Study default distribution across key affordability variables  
3. Evaluate credit behavior indicators associated with repayment failure  
4. Perform SQL-driven segmentation analysis to generate business insights  
5. Validate insights through statistical exploration and visualization  
6. Present findings through a professional dashboard and interpretation  

---

## 🗂 Dataset Overview
- **Rows:** 38,474 loans  
- **Columns:** 24 features  
- **Target Variable:** `repay_fail`  
  - `0` → Non-default / repayment successful  
  - `1` → Default / repayment failure  

The dataset includes both **financial affordability indicators** and **credit behavior indicators**, such as:
- Loan amount, funded amount, term, interest rate, installment  
- Annual income, debt-to-income ratio (DTI)  
- Credit inquiries, delinquencies, revolving utilization, public records  
- Purpose, verification status, and home ownership  

---

## 🧹 Data Cleaning & Preprocessing (Python)
Cleaning was done in Python to ensure the dataset is reliable for analysis.

### Key steps performed:
✅ Missing value audit and treatment  
✅ Standardizing formats (term conversion, categorical cleanup)  
✅ Handling incorrect values (e.g., interest rate = 0)  
✅ Cleaning percentage-format features (`revol_util`)  
✅ Date formatting where required  
✅ Removing ID-like fields and post-loan leakage columns  

✅ Final result: A clean dataset ready for segmentation, analysis, and dashboarding.

---

## 🧾 SQL Analysis (MySQL Workbench)
The SQL phase focused on segmentation and business risk insights.

### Key SQL work:
✅ Overall default rate and portfolio metrics  
✅ Default rate by:
- Term  
- Purpose  
- Verification status  
- Home ownership  

✅ Bucket-based risk analysis:
- Income bucket  
- DTI bucket  
- Interest rate bucket  
- Revolving utilization bucket  

✅ Risk Flag Classification (Rule-based segmentation)  
Borrowers were segmented into **High / Moderate / Low risk categories** using combinations of:
- High interest rate  
- Longer tenure loans  
- Small business purpose  
- Revolving utilization ≥ 90%  
- Low income & high DTI  

---

## 📊 Exploratory Data Analysis (Python)
EDA was used to validate patterns identified in SQL and generate statistical insights.

### Key EDA insights:
✅ Default rate increases strongly with higher interest rate  
✅ Revolving utilization shows clear default risk trend  
✅ Low income borrowers show higher repayment failure  
✅ DTI reflects affordability stress  
✅ Credit behaviour variables (inquiries, delinquencies) indicate elevated risk segments  

Statistical exploration included:
✅ Correlation analysis  
✅ Hypothesis testing (t-tests)  
✅ Logistic regression (interpretability-focused, not ML deployment)

---

## 📈 Power BI Dashboard
A 5-page interactive dashboard was designed to present insights clearly.

### Dashboard Pages:
✅ **Page 1: Portfolio Overview**  
✅ **Page 2: Affordability & Stress Indicators**  
✅ **Page 3: Credit Behaviour Indicators**  
✅ **Page 4: Segmentation Deep Dive (Matrices)**  
✅ **Page 5: Conclusion & Recommendations**

### Filters / Slicers used:
- Term  
- Purpose  
- Verification status  
- Home ownership  
- Risk flag  

---

## 💡 Key Findings
- **60-month loans** show higher default rate than 36-month loans  
- **Interest rate bucket 20%+** has the highest default risk  
- **Small business loans** show consistently elevated risk  
- **Revolving utilization >90%** is a strong stress indicator  
- **Low income borrowers (<25k)** show higher default tendency  
- Risk segmentation helps identify:
  - High-risk segments (high default %)  
  - High-volume segments contributing most defaults  

---

## ✅ Recommendations
📌 Strengthen screening for **high interest + long tenure loans**  
📌 Apply stricter affordability checks for **low income + high DTI borrowers**  
📌 Monitor revolving utilization and inquiries as early warning indicators  
📌 Use segmentation-driven portfolio monitoring for risk control  
📌 Risk-based pricing and exposure limits for high-risk segments  

---

## 🛠 Tools & Technologies Used
- **Python:** Pandas, NumPy, Matplotlib, Seaborn, Statsmodels  
- **SQL:** MySQL Workbench  
- **Power BI:** DAX measures, calculated columns, interactive visuals  
- **Documentation:** Jupyter Notebook + Project Report  

---

## 📁 Repository Structure
```text
Loan-Default-Risk-Analysis/
│
├── Data Cleaning & EDA/
├── sql/
├── Dashboard/
├── visuals/
└── README.md
