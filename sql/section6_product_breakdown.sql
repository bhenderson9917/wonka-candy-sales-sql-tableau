-- Section 6: Product Breakdown (units by product with join to pricing)
-- Tables: wonka_sales (ws), product_pricing (pp)

SELECT
  product_name,
  unit_price,
  unit_cost,
-- profit margin formula utilizing unit price and unit cost
  ROUND(((unit_price - unit_cost) / unit_price),2) AS product_profit_margin,
-- creates profit margin buckets for products to be assigned to
-- Note: average profitability in this case is measured manually to avoid...
-- Note (cont.) ...windows functions & subqueries for later advanced project demonstrations
CASE
  WHEN ROUND(((unit_price - unit_cost) / unit_price),2) > 0.574
    THEN 'Above Average Profitability'
  WHEN ROUND(((unit_price - unit_cost) / unit_price),2) = 0.574
    THEN 'Average Profitability'
  WHEN ROUND(((unit_price - unit_cost) / unit_price),2) > 0
    THEN 'Below Average Profitability'
  ELSE 'Error'
END AS profitability_bucket
FROM product_pricing
GROUP BY product_name, unit_price, unit_cost
-- orders by product name
ORDER BY product_name
