-- Section 6: Product Breakdown (units by product with join to pricing)
-- Tables: wonka_sales (ws), product_pricing (pp)

SELECT
  ws.product_name,
  pp.unit_price,
  pp.unit_cost,
  SUM(ws.units) AS total_units
FROM wonka_sales ws
JOIN product_pricing pp ON ws.product_id = pp.product_id
GROUP BY ws.product_name, pp.unit_price, pp.unit_cost
ORDER BY total_units DESC;
