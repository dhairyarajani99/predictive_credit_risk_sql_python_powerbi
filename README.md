# predictive_credit_risk_sql_python_powerbi

# 🏦 Predictive Credit Risk Scoring & Retail Underwriting Framework

> An end-to-end Credit Risk Analytics project that leverages **MySQL, Python, XGBoost, and Power BI** to assess borrower creditworthiness, predict default risk, estimate expected loss, generate credit scores, and support data-driven underwriting decisions.

---

# 🚀 Project Overview

Financial institutions process thousands of loan applications every day. Making accurate lending decisions requires evaluating borrower risk while minimizing potential financial losses.

This project builds a complete **Credit Risk Scoring & Retail Underwriting Framework** that transforms raw loan application data into actionable business insights using SQL, Machine Learning, and Business Intelligence.

The project demonstrates the complete analytics lifecycle, including:

- Data Cleaning
- Portfolio Analysis
- Feature Engineering
- Predictive Credit Risk Modeling
- Credit Score Generation
- Expected Loss Estimation
- Executive Power BI Dashboard

---

# 🎯 Business Objectives

- Assess borrower creditworthiness using financial and employment information.
- Predict the Probability of Default (PD) for every borrower.
- Generate an interpretable Credit Score for underwriting decisions.
- Estimate Expected Loss (EL) to quantify portfolio risk.
- Categorize borrowers into Prime, Near-Prime, and Subprime segments.
- Build executive dashboards for portfolio monitoring.
- Provide actionable recommendations to improve lending decisions and reduce credit losses.

---

# 🛠️ Tech Stack

| Tool | Purpose |
|-------|----------|
| MySQL | Data Cleaning & Portfolio Analysis |
| Python | Data Preprocessing & Machine Learning |
| Pandas | Data Manipulation |
| NumPy | Numerical Analysis |
| Scikit-learn | Data Preparation & Model Evaluation |
| XGBoost | Predictive Credit Risk Modeling |
| Power BI | Dashboard & Business Intelligence |
| DAX | KPI Calculations |
| GitHub | Version Control |
| Kaggle | Full Dataset Hosting |

---

# 📂 Dataset

The project uses a retail lending dataset containing **800,000+ loan applications**.

To keep the repository lightweight:

- ✅ Sample Dataset (50 rows) is included in this repository.
- ✅ Complete Dataset (800K+ rows) is available on Kaggle.

## Sample Dataset

```
data/sample_data.csv
```

## Full Dataset

Kaggle dataset link.

```
https://www.kaggle.com/datasets/dhairyarajani9/credit-risk-raw-data
```


# 📋 Dataset Description

The dataset contains borrower-level financial, employment, and loan information.

## Customer Information

- Member ID
- Employment Title
- Employment Years
- Annual Income

## Loan Information

- Loan Amount
- Loan Purpose
- Debt-to-Income Ratio (DTI)
- Loan-to-Income Ratio

## Credit Risk Information

- Delinquencies
- Credit Score
- Probability of Default
- Expected Loss
- Risk Tier

---

# ⚙️ Project Workflow

```
Raw Loan Dataset
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
XGBoost Credit Risk Model
        │
        ▼
Credit Score Generation
        │
        ▼
Probability of Default Prediction
        │
        ▼
Expected Loss Estimation
        │
        ▼
Power BI Executive Dashboard
        │
        ▼
Business Insights & Recommendations
```

---

# 🧹 Phase 1 – Data Cleaning (MySQL)

Performed extensive data validation and cleaning to ensure high-quality data.

### Tasks Performed

- Imported raw loan application dataset
- Removed duplicate borrowers
- Checked missing values
- Validated annual income
- Validated loan amount
- Cleaned employment length
- Standardized employment tenure
- Removed anomalous records
- Created underwriting decision view

---

# 📊 Phase 2 – Portfolio Analytics (MySQL)

Performed SQL-based portfolio analysis to understand lending risk.

### Portfolio Risk Analysis

- Portfolio Risk Distribution
- Capital Exposure
- Portfolio Share by Risk Tier
- Average Loan Size

### Underwriting Analytics

- Loan-to-Income Ratio
- Employment Stability
- Debt-to-Income Analysis
- Borrower Segmentation

### Product Analysis

- Loan Purpose Distribution
- Product Risk Concentration
- High Risk Loan Categories

### Portfolio Stress Testing

Estimated

- Probability of Default
- Expected Loss
- Capital at Risk

### High Exposure Analysis

Identified

- Highest Loan Amounts
- High DTI Borrowers
- Large Financial Exposure

---

# 🤖 Phase 3 – Predictive Credit Risk Modeling (Python)

Performed complete machine learning workflow.

## Data Preprocessing

- Missing Value Handling
- Label Encoding
- Feature Scaling
- Train-Test Split

## Feature Engineering

Created

- Employment Years
- Loan-to-Income Ratio
- Credit Score
- Risk Tier
- Probability of Default
- Expected Loss

## Machine Learning

### Algorithm

- XGBoost Classifier

### Model Output

- Credit Score
- Probability of Default
- Risk Tier
- Expected Loss

---

# 📈 Phase 4 – Power BI Dashboard

Designed a professional **5-page executive dashboard** for banking and financial institutions.

---

# 📌 Dashboard Page 1 – Executive Portfolio Overview

## KPIs

- Total Borrowers
- Total Capital Exposure
- Average Credit Score
- Average Probability of Default
- Total Expected Loss
- Portfolio Loss Rate

## Visuals

- Portfolio Risk Distribution
- Capital Exposure by Risk Tier
- Loan Portfolio by Purpose
- Average Credit Score by Purpose

## Slicers

- Risk Tier
- Loan Purpose
- Employment Years

---

# 📌 Dashboard Page 2 – Credit Risk Analytics

## KPIs

- Average DTI
- High Risk Exposure
- Average Loan-to-Income Ratio
- Maximum DTI

## Visuals

- Income vs DTI Scatter Plot
- Average PD by Risk Tier
- Expected Loss by Purpose
- Risk Matrix

## Slicers

- Risk Tier
- Loan Purpose
- Employment Years

---

# 📌 Dashboard Page 3 – Underwriting Decision Dashboard

## KPIs

- Approved Borrowers
- Manual Review
- Rejected Borrowers
- Approval Rate
- Average Credit Score
- Average PD

## Visuals

- Underwriting Funnel
- Decision by Risk Tier
- Decision Matrix
- High Risk Borrower Table

## Slicers

- Decision
- Risk Tier
- Purpose
- Employment Years

---

# 📌 Dashboard Page 4 – Predictive Risk Insights

## KPIs

- Average Credit Score
- Average Probability of Default
- Total Expected Loss
- High Risk Borrowers
- High Risk Capital Exposure

## Visuals

- Feature Importance
- Credit Score vs Probability of Default
- Expected Loss by Risk Tier
- Portfolio Distribution by Risk Tier
- Highest Expected Loss Borrowers

## Slicers

- Risk Tier
- Loan Purpose
- Employment Years

---

# 📊 Key Financial Analysis

The project evaluates the overall financial health of the lending portfolio.

### Credit Risk Analysis

- Identified high-risk borrower segments
- Evaluated borrower affordability
- Assessed Debt-to-Income ratios
- Measured Loan-to-Income ratios

### Portfolio Analysis

- Capital allocation across loan purposes
- Portfolio concentration analysis
- Risk distribution across customers
- Exposure by borrower category

### Financial Risk Analysis

- Probability of Default estimation
- Expected Loss calculation
- Capital at Risk analysis
- Portfolio Loss estimation

### Underwriting Analytics

- Customer risk segmentation
- Credit Score generation
- Approval decision support
- Manual review identification

---

# 💡 Key Business Insights

- High DTI borrowers contribute significantly to portfolio risk.
- Borrowers with lower annual income generally exhibit higher default probabilities.
- Loan-to-Income Ratio is a critical indicator of repayment capacity.
- Subprime borrowers account for the majority of expected financial losses.
- Certain loan purposes have disproportionately higher risk exposure.
- Credit scoring enables consistent and data-driven underwriting decisions.

---

# 🚀 Business Recommendations

- Strengthen underwriting policies for high DTI borrowers.
- Prioritize manual review for medium-risk applicants.
- Reduce lending exposure to high-risk customer segments.
- Increase focus on Prime and Near-Prime borrowers.
- Monitor accounts with high expected losses.
- Continuously update predictive models using recent loan performance data.
- Use Credit Score and Probability of Default together for more informed lending decisions.

---

# 📸 Dashboard Preview

## Dashboard

```
<img width="1357" height="796" alt="Screenshot 2026-07-10 172523" src="https://github.com/user-attachments/assets/b257074a-60bb-4235-a27d-b73adf68f131" />

<img width="1343" height="747" alt="Screenshot 2026-07-10 162311" src="https://github.com/user-attachments/assets/784d7d27-e443-48c1-bf50-2361d6c547ad" />

<img width="1336" height="747" alt="Screenshot 2026-07-10 162326" src="https://github.com/user-attachments/assets/512f9e72-75b1-4f1e-98f2-84a9b4d47f90" />

<img width="1330" height="745" alt="Screenshot 2026-07-10 162339" src="https://github.com/user-attachments/assets/b3d4c1a1-c635-4863-a12c-00cf592e0f6a" />
```


# 📁 Project Structure

```
predictive-credit-risk-scoring-framework/
│
├── data/
│   ├── sample_credit_risk_dataset.csv
│
├── sql/
│   ├── credit_risk_sql_queries.sql
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
```

# 🎯 Skills Demonstrated

## SQL

- Data Cleaning
- Views
- Aggregations
- CASE Statements
- Risk Segmentation
- Portfolio Analytics

## Python

- Data Cleaning
- Feature Engineering
- Predictive Analytics
- Credit Score Generation
- Expected Loss Calculation

## Machine Learning

- XGBoost
- Probability of Default Prediction
- Feature Importance
- Credit Risk Modeling

## Power BI

- Executive Dashboard Design
- Interactive Visualizations
- DAX Measures
- Financial KPI Development
- Credit Risk Reporting

---

# 📌 Key Performance Indicators

### Portfolio KPIs

- Total Borrowers
- Total Capital Exposure
- Average Loan Amount
- Average Income

### Credit Risk KPIs

- Average Credit Score
- Average Probability of Default
- High Risk Borrowers
- High Risk Capital Exposure

### Financial KPIs

- Total Expected Loss
- Portfolio Loss Rate
- Largest Loan Exposure

### Underwriting KPIs

- Approval Rate
- Approved Borrowers
- Manual Review Cases
- Rejected Borrowers

---

# 📌 Future Improvements

- Integrate real-time loan application data.
- Deploy predictive model using Streamlit or FastAPI.
- Add Explainable AI (SHAP) for model interpretability.
- Compare XGBoost with Logistic Regression and Random Forest.
- Build automated model retraining pipeline.
- Publish dashboard using Power BI Service.
- Integrate cloud data warehouse for enterprise deployment.

---

# 👤 Author

## Dhairya Rajani

**Aspiring Data Analyst | Business Analyst | Credit Risk Analyst**

---

# 🤝 Connect

If you found this project useful or have any suggestions, feel free to connect.


