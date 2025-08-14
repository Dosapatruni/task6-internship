# task6-internship
# 📊 Task 6: Sales Trend Analysis Using Aggregations

## ✅ What I Did
- Created a sample dataset `online_sales` in MySQL with fields: `order_id`, `order_date`, `amount`, and `product_id`.
- Wrote SQL queries to analyze **monthly revenue** and **order volume** using:
  - `EXTRACT()` to get year and month
  - `SUM()` for total revenue
  - `COUNT(DISTINCT)` for total orders
  - `GROUP BY` to group data by year/month
  - `ORDER BY` to sort results
  - `LIMIT` to fetch the top 3 months by revenue
- Added handling of `NULL` values in revenue using `COALESCE(amount,0)`.

## 📊 Outcome
- Generated a monthly sales report showing revenue and order count.
- Identified the **top 3 months** with highest sales.
- Learned how to use SQL aggregation functions effectively for trend analysis.
