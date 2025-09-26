-- Section 5: Average Product Units per Transaction
-- Table: wonka_sales

SELECT
  product_name,
  ROUND(AVG(units),2) AS avg_units_in_transaction
FROM wonka_sales
GROUP BY product_name
ORDER BY avg_units_in_transaction DESC;
