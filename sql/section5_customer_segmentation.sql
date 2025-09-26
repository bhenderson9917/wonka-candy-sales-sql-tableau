-- Section 5: Top Wonka Customer Segmentation (primary)
-- Table: wonka_sales

SELECT
  customer_id,
  COUNT(DISTINCT order_id) AS order_id_count,
  SUM(sales)               AS total_sales,
  ROUND(SUM(sales) / COUNT(DISTINCT order_id),2) AS average_sale_per_order_id
FROM wonka_sales
GROUP BY customer_id
ORDER BY total_sales DESC, order_id_count DESC, average_sale_per_order_id DESC;
