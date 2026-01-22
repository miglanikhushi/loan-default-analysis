-- ============================================
-- LOAN DEFAULT RISK ANALYSIS (SQL PHASE)
-- Dataset: loan_default_cleaned
-- Target Variable: repay_fail (0 = Non-Default, 1 = Default)
-- ============================================

SELECT COUNT(*) AS total_rows
FROM loan_default_cleaned;

DESCRIBE loan_default_cleaned;

SELECT * FROM loan_default_cleaned LIMIT 10;





