
# Task 6: Sales Trend Analysis Using Aggregations

## 🎯 Objective
Analyze monthly revenue and order volume using SQL aggregations.

## 🛠️ Tools Used
- MySQL
- SQL Queries

## 📁 Dataset
- **Source**: [Online Sales Dataset from Kaggle](https://www.kaggle.com/datasets/shreyanshverma27/online-sales-dataset-popular-marketplace-data)
- **Table Used**: `online_sales`
- **Columns**:
  - `order_id`
  - `order_date`
  - `amount`
  - `product_id`

## 📌 Steps Performed

### 1. Table Creation
```sql
CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);
```

### 2. Sample Data Insertion
```sql
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2025-01-10', 120.00, 1001),
(2, '2025-01-18', 200.00, 1002),
(3, '2025-02-12', 150.00, 1003),
(4, '2025-02-25', 300.00, 1004),
(5, '2025-03-05', 180.00, 1005),
(6, '2025-03-15', 220.00, 1006);
```

### 3. Monthly Aggregation Query
```sql
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
```

### 4. Optional: Filter by Year
```sql
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
WHERE
    YEAR(order_date) = 2025
GROUP BY
    month
ORDER BY
    month;
```

## 📈 Sample Output

| month    | total_revenue | order_volume |
|----------|----------------|--------------|
| 2025-01  | 320.00         | 2            |
| 2025-02  | 450.00         | 2            |
| 2025-03  | 400.00         | 2            |

## 💡 Outcome
Gained insights into monthly sales trends, including:
- Total revenue per month
- Number of orders per month

## 📄 Deliverables
- SQL Script (`sales_trend_analysis.sql`)
- Results Table (screenshot)
- README File (`README.md`)
