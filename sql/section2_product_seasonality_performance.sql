-- Section 2: Product Seasonality & Performance
-- Table: wonka_sales

SELECT
  EXTRACT(YEAR FROM order_date)   AS "Year",
  EXTRACT(QUARTER FROM order_date) AS "Quarter",
  product_name,
  COUNT(*)            AS transactions,
  ROUND(AVG(units),2) AS average_units,
  SUM(units)          AS total_units,
  ROUND(AVG(sales),2) AS avg_sales,
  ROUND(SUM(sales),2) AS total_sales,
  ROUND(SUM(gross_profit),2) AS total_gross_profit
FROM wonka_sales
GROUP BY "Year", "Quarter", product_name
ORDER BY "Year", "Quarter", total_sales;
