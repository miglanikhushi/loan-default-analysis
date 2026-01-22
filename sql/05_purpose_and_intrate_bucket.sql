SELECT
    purpose,
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
GROUP BY purpose, int_rate_bucket
HAVING COUNT(*) >= 200
ORDER BY default_rate_percent DESC;
