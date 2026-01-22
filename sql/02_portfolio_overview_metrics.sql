-- ============================================
-- 1. PORTFOLIO OVERVIEW METRICS
-- ============================================
SELECT
    COUNT(*) AS total_loans,
    SUM(repay_fail) AS total_defaults,
    ROUND(SUM(repay_fail) * 100.0 / COUNT(*), 2) AS default_rate_percent
FROM loan_default_cleaned;

SELECT
    ROUND(AVG(funded_amnt), 2) AS avg_loan_amount,
    ROUND(AVG(int_rate), 2) AS avg_interest_rate,
    ROUND(AVG(dti), 2) AS avg_dti,
    ROUND(AVG(annual_inc), 2) AS avg_annual_income
FROM loan_default_cleaned;

