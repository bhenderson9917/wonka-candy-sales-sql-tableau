-- Section 6: Product Profitability Buckets
-- Table: product_pricing

SELECT
  product_name,
  unit_price,
  unit_cost,
  ROUND(((unit_price - unit_cost) / unit_price),2) AS product_profit_margin,
  CASE
    WHEN ROUND(((unit_price - unit_cost) / unit_price),2) > 0.574 THEN 'Above Average Profitability'
    WHEN ROUND(((unit_price - unit_cost) / unit_price),2) = 0.574 THEN 'Average Profitability'
    WHEN ROUND(((unit_price - unit_cost) / unit_price),2) > 0      THEN 'Below Average Profitability'
    ELSE 'Error'
  END AS profitability_bucket
FROM product_pricing
GROUP BY product_name, unit_price, unit_cost
ORDER BY product_name;
