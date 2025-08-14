SELECT 
    EXTRACT(YEAR FROM order_date) AS year,                  -- Extract Year
    EXTRACT(MONTH FROM order_date) AS month,                -- Extract Month
    SUM(amount) AS total_revenue,                           -- Total Revenue
    COUNT(DISTINCT order_id) AS total_orders                -- Distinct Orders
FROM online_sales
GROUP BY year, month                                        -- Group by Year/Month
ORDER BY year, month;                                       -- Sort by time

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC     -- Sort by revenue
LIMIT 3;                        -- Take top 3

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(COALESCE(amount,0)) AS total_revenue,     -- Replace NULL with 0
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
