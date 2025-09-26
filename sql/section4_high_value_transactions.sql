-- Section 4: High-Value Transaction Analysis by State
-- Table: wonka_sales

SELECT
  state_province,
  division,
  MAX(sales)         AS largest_sale,
  MIN(sales)         AS smallest_sale,
  MAX(gross_profit)  AS most_profitable_sale,
  MIN(gross_profit)  AS least_profitable_sale
FROM wonka_sales
WHERE country_region = 'United States'
  AND division IN ('Chocolate','Sugar')
GROUP BY state_province, division
HAVING MAX(sales) > 50 OR MAX(gross_profit) > 25
ORDER BY division DESC, largest_sale DESC;
