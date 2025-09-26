-- Section 7: 2021 Non-core Product Orders
-- Table: wonka_sales

SELECT
  order_id,
  order_date,
  country_region,
  state_province,
  postal_code,
  product_id,
  sales,
  units
FROM wonka_sales
WHERE product_id NOT LIKE 'CHO%'
  AND order_date BETWEEN '2021-01-01' AND '2021-12-31'
ORDER BY order_date;
