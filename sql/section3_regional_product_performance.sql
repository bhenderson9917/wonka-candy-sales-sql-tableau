-- Section 3: Regional Product Performance Explorer
-- Table: wonka_sales

SELECT
  EXTRACT(YEAR FROM order_date) AS "Year",
  state_province AS state,
  product_name,
  ROUND(SUM(sales),2) AS total_sales,
  ROUND(SUM(gross_profit),2) AS total_gross_profit
FROM wonka_sales
GROUP BY "Year", state, product_name
ORDER BY "Year", state, product_name;
