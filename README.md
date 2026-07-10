# predictive_credit_risk_sql_python_powerbi
**🏦 Predictive Credit Risk Scoring & Retail Underwriting Framework**

**🚀 Project Overview**

This project presents an end-to-end Credit Risk Analytics and Retail Underwriting Framework designed to assist financial institutions in assessing borrower risk, supporting underwriting decisions, and monitoring loan portfolio health.

Using MySQL, Python, XGBoost, and Power BI, the project transforms raw loan application data into actionable business insights by estimating Probability of Default (PD), generating Credit Scores, calculating Expected Loss, and segmenting borrowers into risk categories.

The solution demonstrates how data analytics and machine learning can improve lending decisions, reduce credit risk, and optimize capital allocation.

**🎯 Business Objectives**

Assess borrower creditworthiness using historical loan information.
Predict the Probability of Default (PD) for each borrower.
Generate an interpretable credit score for underwriting.
Estimate Expected Loss (EL) to measure financial exposure.
Segment customers into Prime, Near-Prime, and Subprime categories.
Build an interactive executive dashboard for portfolio monitoring.
Support data-driven underwriting and credit approval decisions.

**🛠️ Tools & Technologies**

Tool	Purpose
MySQL	Data Cleaning, Data Validation, SQL Analysis
Python	Data Preprocessing, Feature Engineering, Machine Learning
Pandas	Data Manipulation
NumPy	Numerical Operations
Scikit-learn	Data Preprocessing & Model Evaluation
XGBoost	Predictive Credit Risk Modeling
Power BI	Interactive Dashboard & Business Intelligence
DAX	KPI Calculations
GitHub	Version Control & Documentation
Kaggle	Full Dataset Hosting

**📂 Dataset**

The project uses a retail lending dataset containing 800,000+ loan applications.

To keep the repository lightweight:

✅ Sample Dataset (50 Rows) included in this repository.
✅ Complete Dataset (800K+ Rows) available on Kaggle.

**Sample Dataset**
data/sample_data.csv

**Full Dataset**
Kaggle dataset link:
https://www.kaggle.com/datasets/dhairyarajani9/credit-risk-raw-data

**📋 Dataset Features**

The dataset contains borrower, employment, income, loan, and credit risk information.

Customer Information
Member ID
Employment Title
Employment Years
Annual Income
Loan Information
Loan Amount
Loan Purpose
Loan-to-Income Ratio
Debt-to-Income Ratio (DTI)
Credit Risk Information
Delinquencies
Credit Score
Probability of Default
Expected Loss
Risk Tier

**⚙️ Project Workflow**

Raw Loan Data
        │
        ▼
Data Cleaning (MySQL)
        │
        ▼
SQL Portfolio Analysis
        │
        ▼
Python Data Preprocessing
        │
        ▼
Feature Engineering
        │
        ▼
XGBoost Predictive Model
        │
        ▼
Credit Score Generation
        │
        ▼
Probability of Default (PD)
        │
        ▼
Expected Loss Calculation
        │
        ▼
Power BI Executive Dashboard
        │
        ▼
Business Recommendations

**📊 Phase 1 – Data Cleaning (MySQL)**

Performed extensive data quality checks:

Imported raw loan dataset.
Removed duplicate borrowers.
Handled missing and invalid records.
Cleaned employment length values.
Validated annual income and loan amount.
Detected abnormal DTI values.
Standardized employment tenure.
Created an underwriting decision view.

**📈 Phase 2 – SQL Analytics**

Developed SQL queries for portfolio analysis.

Portfolio Risk Distribution
Borrowers by Risk Tier
Capital Exposure
Portfolio Share
Average Loan Size
Product Concentration Analysis
Loan Purpose Analysis
Risk Distribution by Purpose
High-Risk Product Identification
Underwriting Analytics
Loan-to-Income Ratio
Employment Stability
Risk Segmentation
Debt-to-Income Buckets
Portfolio Stress Testing

Estimated:

Probability of Default
Expected Loss
Capital at Risk
High Exposure Analysis

Identified borrowers with:

Highest Loan Amount
Highest DTI
Highest Financial Exposure

**🤖 Phase 3 – Predictive Credit Risk Modeling (Python)**

**Performed machine learning workflow:**

Data Preprocessing
Missing Value Handling
Label Encoding
Feature Scaling
Train-Test Split
Feature Engineering

Created:

Employment Years
Loan-to-Income Ratio
Risk Flag
Credit Score
Risk Tier
Machine Learning

Algorithm Used:

XGBoost Classifier

Generated:

Probability of Default (PD)
Credit Score
Expected Loss
Risk Classification

**📊 Phase 4 – Power BI Dashboard**

Developed a 4-page executive dashboard for credit risk monitoring.

**📌 Page 1 – Executive Portfolio Overview**

KPIs
Total Borrowers
Total Capital Exposure
Average Credit Score
Total Expected Loss
Portfolio Loss Rate
Average Probability of Default
Visuals
Portfolio Risk Distribution
Capital Exposure by Risk Tier
Portfolio by Loan Purpose
Average Credit Score by Purpose

**📌 Page 2 – Credit Risk Analytics**

KPIs
Average DTI
High-Risk Exposure
Average Loan-to-Income Ratio
Maximum DTI
Visuals
Income vs DTI Scatter Plot
Expected Loss by Purpose
Average PD by Risk Tier
Risk Matrix

**📌 Page 3 – Underwriting Decision Dashboard**

KPIs
Approved Borrowers
Manual Review
Rejected Borrowers
Approval Rate
Average Credit Score
Average PD
Visuals
Underwriting Funnel
Decision by Risk Tier
Decision Matrix
Borrower Review Table

**📌 Page 4 – Predictive Risk Insights**

KPIs
Average Credit Score
Average Probability of Default
Total Expected Loss
High-Risk Borrowers
High-Risk Capital Exposure
Visuals
Feature Importance
Credit Score vs Probability of Default
Expected Loss by Risk Tier
Portfolio Distribution by Risk Tier
Highest Expected Loss Borrowers

**📈 Financial Analysis & Business Insights**

**The analysis provides actionable insights into the loan portfolio:**

Identified borrower segments contributing the highest credit risk.
Estimated portfolio-level expected financial loss.
Measured exposure across different loan purposes.
Evaluated borrower affordability using DTI and Loan-to-Income ratios.
Prioritized high-risk accounts for underwriting review.
Improved visibility into portfolio concentration and capital allocation.

**💡 Business Recommendations**

Strengthen underwriting policies for high DTI borrowers.
Prioritize manual review for medium-risk applicants.
Reduce exposure to high-risk lending segments.
Focus lending on Prime and Near-Prime customers.
Monitor high expected loss accounts proactively.
Use PD and Credit Score together for better lending decisions.
Continuously retrain predictive models with new loan performance data.

**📸 Dashboard Preview**

<img width="1357" height="796" alt="Screenshot 2026-07-10 172523" src="https://github.com/user-attachments/assets/b257074a-60bb-4235-a27d-b73adf68f131" />

<img width="1343" height="747" alt="Screenshot 2026-07-10 162311" src="https://github.com/user-attachments/assets/784d7d27-e443-48c1-bf50-2361d6c547ad" />

<img width="1336" height="747" alt="Screenshot 2026-07-10 162326" src="https://github.com/user-attachments/assets/512f9e72-75b1-4f1e-98f2-84a9b4d47f90" />

<img width="1330" height="745" alt="Screenshot 2026-07-10 162339" src="https://github.com/user-attachments/assets/b3d4c1a1-c635-4863-a12c-00cf592e0f6a" />


**📁 Repository Structure**

predictive-credit-risk-scoring-framework/
│
├── data/
│   ├── sample_data.csv
│
├── sql/
│   ├── predictive_credit_risk_sql_queries.sql
│
├── python/
│   ├── predictive_credit_risk_model.ipynb
│
├── dashboard/
│   ├── predictive_credit_risk_dashboard.pbix
│
├── images/
│   ├── dashboard_page1.png
│   ├── dashboard_page2.png
│   ├── dashboard_page3.png
│   ├── dashboard_page4.png
│   ├── dashboard_page5.png
│
├── README.md

**📌 Key Skills Demonstrated**

SQL
Data Cleaning
Views
CASE Statements
Aggregations
Risk Segmentation
Portfolio Analysis
Python
Data Preprocessing
Feature Engineering
Predictive Modeling
Credit Scoring
Expected Loss Calculation
Machine Learning
XGBoost
Probability of Default Prediction
Feature Importance Analysis
Power BI
DAX Measures
Executive Dashboards
Interactive Slicers
Financial KPIs
Risk Analytics

**🚀 Future Enhancements**

Integrate real-time loan application data.
Add Explainable AI (SHAP) for model interpretability.
Compare multiple ML algorithms (Logistic Regression, Random Forest, XGBoost).
Automate model retraining with new borrower data.
Deploy the solution as an interactive web application using Streamlit or Power BI Service.

**👤 Author**

Dhairya Rajani
Aspiring Data Analyst | Business Analyst | Credit Risk Analyst

**🤝 Connect**

If you found this project useful or have suggestions for improvement, feel free to connect with me on LinkedIn or explore more of my projects on GitHub.
