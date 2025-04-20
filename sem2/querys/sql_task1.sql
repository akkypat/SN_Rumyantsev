--1
SELECT 
    currency,
    SUM(amount) AS total_amount
FROM transactions_v2
WHERE currency IN ('USD', 'EUR', 'RUB')
GROUP BY currency;

--2
SELECT
    is_fraud,
    COUNT(*) AS number_of_transactions_v2,
    SUM(amount) AS total_sum,
    AVG(amount) AS average_check
FROM transactions_v2
GROUP BY is_fraud;

--3
SELECT
    DATE(transaction_date) AS daily_date,
    COUNT(*) AS num_transactions_v2,
    SUM(amount) AS total_volume,
    AVG(amount) AS avg_amount
FROM transactions_v2
GROUP BY daily_date
ORDER BY daily_date ASC;

--4
SELECT
    YEAR(transaction_date) AS year,
    MONTH(transaction_date) AS month,
    DAY(transaction_date) AS day,
    COUNT(*) AS num_transactions_v2,
    SUM(amount) AS total_volume,
    AVG(amount) AS avg_amount
FROM transactions_v2
GROUP BY year, month, day
ORDER BY year ASC, month ASC, day ASC;

--5
SELECT
    t.transaction_id,
    l.category,
    COUNT(l.log_id) AS log_count,
    MAX(t.amount) AS max_transaction_amount
FROM transactions_v2 t
JOIN logs_v2 l ON t.transaction_id = l.transaction_id
GROUP BY t.transaction_id, l.category
ORDER BY log_count DESC;
