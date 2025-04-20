--1
SELECT
    payment_status,
    count() AS order_count,
    sum(total_amount) AS total_sum,
    avg(total_amount) AS avg_order_value
FROM orders
GROUP BY payment_status
ORDER BY payment_status;

--2
SELECT
    o.order_id,
    o.payment_status,
    sum(i.quantity) AS total_quantity,
    sum(i.product_price * i.quantity) AS total_product_cost,
    avg(i.product_price) AS avg_product_price
FROM orders o
INNER JOIN order_items i ON o.order_id = i.order_id
GROUP BY o.order_id, o.payment_status
ORDER BY o.order_id;

--3
SELECT
    toDate(order_date) AS date,
    count() AS order_count_per_day,
    sum(total_amount) AS total_daily_sales
FROM orders
GROUP BY date
ORDER BY date;

--4
SELECT
    user_id,
    sum(total_amount) AS total_user_spent
FROM orders
GROUP BY user_id
ORDER BY total_user_spent DESC
LIMIT 10;

--5
SELECT
    user_id,
    count() AS order_count_by_user
FROM orders
GROUP BY user_id
ORDER BY order_count_by_user DESC
LIMIT 10;
