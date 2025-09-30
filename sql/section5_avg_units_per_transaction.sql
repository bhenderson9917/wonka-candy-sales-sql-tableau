-- Section 5: Top Wonka Customer Segmentation
-- Table: wonka_sales

SELECT
-- grabs customer ID for top performing customers
  customer_id,
-- counts the number of unique order IDs for the customer
  COUNT(DISTINCT order_id) AS order_id_count,
-- lifetime sales for the customer
  SUM(sales) AS total_sales,
-- divides total sales by the number of unique order IDs
  ROUND(SUM(sales) / COUNT (DISTINCT order_id),2) AS average_sale_per_order_id
FROM wonka_sales
GROUP BY customer_id
ORDER BY total_sales DESC, order_id_count DESC, average_sale_per_order_id DESC;

