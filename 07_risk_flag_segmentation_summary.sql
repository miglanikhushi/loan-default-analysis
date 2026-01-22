SELECT
    CASE
        WHEN term = 60 AND int_rate >= 20 THEN 'High Risk (60M + 20%+)'
        WHEN purpose = 'small_business' AND int_rate >= 16 THEN 'High Risk (SB + 16%+)'
        WHEN revol_util >= 90 THEN 'High Risk (Revol Util 90%+)'
        WHEN annual_inc < 25000 THEN 'Moderate Risk (Low Income)'
        WHEN dti >= 20 THEN 'Moderate Risk (High DTI)'
        ELSE 'Low Risk / Standard'
    END AS risk_flag,
    COUNT(*) AS total_loans,
    SUM(repay_fail) AS total_defaults,
    ROUND(SUM(repay_fail) * 100.0 / COUNT(*), 2) AS default_rate_percent
FROM loan_default_cleaned
GROUP BY risk_flag
ORDER BY default_rate_percent DESC;

SELECT
    CASE
        WHEN purpose = 'small_business' AND int_rate >= 16 THEN 'High Risk (SB + 16%+)'
        WHEN term = 60 AND int_rate >= 20 THEN 'High Risk (60M + 20%+)'
        WHEN revol_util >= 90 THEN 'High Risk (Revol Util 90%+)'
        WHEN annual_inc < 25000 THEN 'Moderate Risk (Low Income)'
        WHEN dti >= 20 THEN 'Moderate Risk (High DTI)'
        ELSE 'Low Risk / Standard'
    END AS risk_flag,
    SUM(repay_fail) AS total_defaults,
    ROUND(SUM(repay_fail) * 100.0 / (SELECT SUM(repay_fail) FROM loan_default_cleaned), 2) AS percent_of_all_defaults
FROM loan_default_cleaned
GROUP BY risk_flag
ORDER BY total_defaults DESC;

