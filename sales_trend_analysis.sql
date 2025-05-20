CREATE TABLE online_saless (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2025-01-10', 120.00, 1001),
(2, '2025-01-18', 200.00, 1002),
(3, '2025-02-12', 150.00, 1003),
(4, '2025-02-25', 300.00, 1004),
(5, '2025-03-05', 180.00, 1005),
(6, '2025-03-15', 220.00, 1006);

SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
GROUP BY
    month
ORDER BY
    month;



