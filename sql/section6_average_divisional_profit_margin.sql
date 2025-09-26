-- Section 6: Average Divisional Profit Margin
-- Table: product_pricing

SELECT
  division,
  ROUND(AVG((unit_price - unit_cost) / unit_price),2) AS avg_profit_margin
FROM product_pricing
GROUP BY division
ORDER BY avg_profit_margin DESC;
