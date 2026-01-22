-- ============================================
-- 6. INCOME BUCKET DEFAULT RATE ANALYSIS
-- ============================================
SELECT
    CASE
        WHEN annual_inc < 25000 THEN '<25k'
        WHEN annual_inc < 50000 THEN '25k-50k'
        WHEN annual_inc < 75000 THEN '50k-75k'
        WHEN annual_inc < 100000 THEN '75k-100k'
        WHEN annual_inc < 150000 THEN '100k-150k'
        ELSE '150k+'
    END AS income_bucket,
    COUNT(*) AS total_loans,
    SUM(repay_fail) AS total_defaults,
    ROUND(SUM(repay_fail) * 100.0 / COUNT(*), 2) AS default_rate_percent
FROM loan_default_cleaned
GROUP BY income_bucket
ORDER BY default_rate_percent DESC;

-- ============================================
-- 7. DTI BUCKET DEFAULT RATE ANALYSIS
-- ============================================
SELECT
    CASE
        WHEN dti = 0 THEN 'DTI = 0 / Not Reported'
        WHEN dti < 10 THEN '0-10'
        WHEN dti < 20 THEN '10-20'
        WHEN dti < 30 THEN '20-30'
        WHEN dti < 40 THEN '30-40'
        ELSE '40+'
    END AS dti_bucket,
    COUNT(*) AS total_loans,
    SUM(repay_fail) AS total_defaults,
    ROUND(SUM(repay_fail) * 100.0 / COUNT(*), 2) AS default_rate_percent
FROM loan_default_cleaned
GROUP BY dti_bucket
ORDER BY default_rate_percent DESC;

-- ============================================
-- 8. INTEREST RATE BUCKET DEFAULT RATE ANALYSIS
-- ============================================

SELECT
    CASE
        WHEN int_rate < 7 THEN '0-7'
        WHEN int_rate < 10 THEN '7-10'
        WHEN int_rate < 13 THEN '10-13'
        WHEN int_rate < 16 THEN '13-16'
        WHEN int_rate < 20 THEN '16-20'
        ELSE '20+'
    END AS int_rate_bucket,
    COUNT(*) AS total_loans,
    SUM(repay_fail) AS total_defaults,
    ROUND(SUM(repay_fail) * 100.0 / COUNT(*), 2) AS default_rate_percent
FROM loan_default_cleaned
GROUP BY int_rate_bucket
ORDER BY default_rate_percent DESC;

-- ============================================
-- 9. REVOLVING UTILIZATION BUCKET DEFAULT RATE
-- ============================================
SELECT
    CASE
        WHEN revol_util < 10 THEN '0-10'
        WHEN revol_util < 30 THEN '10-30'
        WHEN revol_util < 50 THEN '30-50'
        WHEN revol_util < 70 THEN '50-70'
        WHEN revol_util < 90 THEN '70-90'
        ELSE '90+'
    END AS revol_util_bucket,
    COUNT(*) AS total_loans,
    SUM(repay_fail) AS total_defaults,
    ROUND(SUM(repay_fail) * 100.0 / COUNT(*), 2) AS default_rate_percent
FROM loan_default_cleaned
GROUP BY revol_util_bucket
ORDER BY default_rate_percent DESC;

Describe loan_default_cleaned;



