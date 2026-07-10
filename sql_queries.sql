CREATE DATABASE creditriskdb;
USE creditriskdb;

CREATE TABLE loans (
    id INT PRIMARY KEY,
    member_id INT UNIQUE,
    loan_amnt DECIMAL(10,2),
    emp_length VARCHAR(30),
    annual_inc DECIMAL(10,2),
    dti DECIMAL(10,2),
    delinq_2yrs INT,
    emp_title VARCHAR(100), 
    purpose VARCHAR(100)    
);

SET SESSION sql_mode = ' ';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/raw_data.csv' 
INTO TABLE loans
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS step4_total_rows_imported FROM loans;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM loans 
WHERE annual_inc IS NULL 
   OR annual_inc = 0 
   OR TRIM(annual_inc) = '';

SET SQL_SAFE_UPDATES = 1;

SELECT COUNT(*) AS clean_rows_remaining FROM loans;

SELECT 
    COUNT(CASE WHEN id IS NULL THEN 1 END) AS missing_ids,
    COUNT(CASE WHEN member_id IS NULL THEN 1 END) AS missing_member_ids,
    COUNT(CASE WHEN loan_amnt IS NULL THEN 1 END) AS missing_loan_amounts
FROM loans;

SELECT COUNT(*) AS anomalous_rows
FROM loans
WHERE loan_amnt <= 0 
   OR annual_inc < 0
   OR dti < 0;
   
SELECT emp_length, COUNT(*) AS total_applications
FROM loans
GROUP BY emp_length
ORDER BY total_applications DESC;

SET SQL_SAFE_UPDATES = 0;

UPDATE loans 
SET emp_length = TRIM(emp_length);

SET SQL_SAFE_UPDATES = 1;

SELECT 
    MAX(loan_amnt) AS max_loan_requested,
    MAX(annual_inc) AS max_annual_income,
    MAX(dti) AS max_dti_ratio
FROM loans;

SELECT member_id, COUNT(*) as duplicate_count
FROM loans
GROUP BY member_id
HAVING COUNT(*) > 1;

CREATE OR REPLACE VIEW v_underwriting_decision_engine AS
SELECT  
    id,    
    member_id,     
    loan_amnt,     
    annual_inc,     
    dti,     
    delinq_2yrs,     
    emp_title,     
    purpose,       
         
    CAST(         
        NULLIF(             
            REGEXP_REPLACE(emp_length, '[^0-9]', ''),              
            ''         
        )      
    AS UNSIGNED) AS clean_emp_years,

    ROUND(loan_amnt / annual_inc, 2) AS loan_to_income_multiplier,
    
    CASE 
        WHEN dti > 50.00 OR delinq_2yrs >= 3 THEN 'Subprime / High Risk'
        WHEN (dti BETWEEN 35.00 AND 50.00) OR (delinq_2yrs BETWEEN 1 AND 2) OR (annual_inc < 45000) THEN 'Near-Prime / Mid Risk'
        WHEN dti < 35.00 AND delinq_2yrs = 0 AND annual_inc >= 45000 THEN 'Prime / Low Risk'
        ELSE 'Review Required / Unclassified'
    END AS risk_segmentation_tier

FROM loans;

-- Portfolio Risk Distribution Audit
SELECT 
    risk_segmentation_tier,
    COUNT(*) AS total_borrowers,
    -- Calculate the percentage of the portfolio this tier represents
    ROUND((COUNT(*) / (SELECT COUNT(*) FROM v_underwriting_decision_engine)) * 100, 2) AS portfolio_share_percent,
    ROUND(SUM(loan_amnt), 2) AS total_capital_exposed,
    ROUND(AVG(loan_amnt), 2) AS avg_loan_size,
    ROUND(AVG(dti), 2) AS avg_debt_to_income
FROM v_underwriting_decision_engine
GROUP BY risk_segmentation_tier
ORDER BY total_borrowers DESC;

-- Product Concentration Analysis (Risk by Loan Purpose)
SELECT 
    purpose,
    COUNT(CASE WHEN risk_segmentation_tier = 'Prime / Low Risk' THEN 1 END) AS prime_loans,
    COUNT(CASE WHEN risk_segmentation_tier = 'Near-Prime / Mid Risk' THEN 1 END) AS near_prime_loans,
    COUNT(CASE WHEN risk_segmentation_tier = 'Subprime / High Risk' THEN 1 END) AS subprime_loans,
    COUNT(*) AS total_loans,
    -- Flag products where more than 15% of the loans are subprime
    CASE 
        WHEN (COUNT(CASE WHEN risk_segmentation_tier = 'Subprime / High Risk' THEN 1 END) / COUNT(*)) > 0.15 
        THEN 'WARNING: High Subprime Concentration'
        ELSE 'Healthy / Within Bounds'
    END AS product_health_status
FROM v_underwriting_decision_engine
GROUP BY purpose
ORDER BY subprime_loans DESC;

-- Portfolio Macroeconomic Stress-Test
SELECT 
    risk_segmentation_tier,
    SUM(loan_amnt) AS total_exposure,
    
    -- Assign simulated Probability of Default (PD) based on the risk tier
    CASE 
        WHEN risk_segmentation_tier = 'Prime / Low Risk' THEN 0.02      -- 2% default rate in downturn
        WHEN risk_segmentation_tier = 'Near-Prime / Mid Risk' THEN 0.08 -- 8% default rate in downturn
        WHEN risk_segmentation_tier = 'Subprime / High Risk' THEN 0.25  -- 25% default rate in downturn
        ELSE 0.05
    END AS simulated_probability_of_default,
    
    -- Expected Loss Equation: EL = Exposure * PD * LGD (60% loss severity)
    ROUND(
        SUM(loan_amnt) * (CASE 
            WHEN risk_segmentation_tier = 'Prime / Low Risk' THEN 0.02
            WHEN risk_segmentation_tier = 'Near-Prime / Mid Risk' THEN 0.08
            WHEN risk_segmentation_tier = 'Subprime / High Risk' THEN 0.25
            ELSE 0.05
         END) * 0.60, 2
    ) AS capital_at_risk_expected_loss

FROM v_underwriting_decision_engine
GROUP BY risk_segmentation_tier;

-- Credit Risk vs. Employment Stability Matrix
SELECT 
    CASE 
        WHEN clean_emp_years IS NULL THEN 'Unknown/Not Provided'
        WHEN clean_emp_years = 0 THEN '< 1 Year'
        WHEN clean_emp_years BETWEEN 1 AND 3 THEN '1-3 Years (Junior)'
        WHEN clean_emp_years BETWEEN 4 AND 6 THEN '4-6 Years (Mid-Career)'
        WHEN clean_emp_years BETWEEN 7 AND 9 THEN '7-9 Years (Senior)'
        ELSE '10+ Years (Highly Stable)'
    END AS employment_tenure_cohort,
    COUNT(*) AS total_borrowers,
    ROUND(AVG(loan_amnt), 2) AS avg_loan_size,
    ROUND(AVG(annual_inc), 2) AS avg_annual_income,
    ROUND(AVG(loan_to_income_multiplier), 2) AS avg_lti_ratio,
    ROUND(AVG(dti), 2) AS avg_dti_ratio
FROM v_underwriting_decision_engine
GROUP BY 1
ORDER BY avg_annual_income DESC;

-- High-Exposure Outlier Detection
SELECT 
    member_id,
    purpose,
    emp_title,
    loan_amnt AS absolute_exposure,
    annual_inc,
    loan_to_income_multiplier,
    dti,
    delinq_2yrs
FROM v_underwriting_decision_engine
WHERE risk_segmentation_tier = 'Subprime / High Risk'
ORDER BY loan_amnt DESC
LIMIT 100;

-- Debt-to-Income (DTI) Concentration Buckets
SELECT 
    CASE 
        WHEN dti <= 10.00 THEN '0% - 10% DTI (Elite Capacity)'
        WHEN dti <= 20.00 THEN '10% - 20% DTI (Strong Capacity)'
        WHEN dti <= 30.00 THEN '20% - 30% DTI (Moderate Capacity)'
        WHEN dti <= 40.00 THEN '30% - 40% DTI (Strained Capacity)'
        ELSE '40% - 50% DTI (Critical / Maximum Debt)'
    END AS dti_risk_band,
    risk_segmentation_tier,
    COUNT(*) AS borrower_count,
    ROUND(SUM(loan_amnt), 2) AS total_capital_allocated
FROM v_underwriting_decision_engine
GROUP BY 1, 2
ORDER BY 1 ASC, 3 DESC;


