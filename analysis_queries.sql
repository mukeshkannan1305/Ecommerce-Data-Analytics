-- 1. Total number of orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM ecommerce_sales;

-- 2. Total sales
SELECT SUM(sales) AS total_sales
FROM ecommerce_sales;

-- 3. Total profit
SELECT SUM(profit) AS total_profit
FROM ecommerce_sales;

-- 4. Region-wise sales and profit
SELECT region,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit
FROM ecommerce_sales
GROUP BY region
ORDER BY total_sales DESC;

-- 5. Monthly sales analysis
SELECT year,
       month,
       SUM(sales) AS total_sales
FROM ecommerce_sales
GROUP BY year, month
ORDER BY year, month;