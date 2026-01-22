-- ============================================
-- 2. DEFAULT RATE BY LOAN TERM
-- ============================================
SELECT
    term,
    COUNT(*) AS total_loans,
    SUM(repay_fail) AS total_defaults,
    ROUND(SUM(repay_fail) * 100.0 / COUNT(*), 2) AS default_rate_percent
FROM loan_default_cleaned
GROUP BY term
ORDER BY default_rate_percent DESC;

-- ============================================
-- 3. DEFAULT RATE BY LOAN PURPOSE
-- ============================================
SELECT
    purpose,
    COUNT(*) AS total_loans,
    SUM(repay_fail) AS total_defaults,
    ROUND(SUM(repay_fail) * 100.0 / COUNT(*), 2) AS default_rate_percent
FROM loan_default_cleaned
GROUP BY purpose
ORDER BY default_rate_percent DESC;

-- ============================================
-- 4. DEFAULT RATE BY HOME OWNERSHIP
-- ============================================
SELECT
    home_ownership,
    COUNT(*) AS total_loans,
    SUM(repay_fail) AS total_defaults,
    ROUND(SUM(repay_fail) * 100.0 / COUNT(*), 2) AS default_rate_percent
FROM loan_default_cleaned
GROUP BY home_ownership
ORDER BY default_rate_percent DESC;

-- ============================================
-- 5. DEFAULT RATE BY VERIFICATION STATUS
-- ============================================
SELECT
    verification_status,
    COUNT(*) AS total_loans,
    SUM(repay_fail) AS total_defaults,
    ROUND(SUM(repay_fail) * 100.0 / COUNT(*), 2) AS default_rate_percent
FROM loan_default_cleaned
GROUP BY verification_status
ORDER BY default_rate_percent DESC;



