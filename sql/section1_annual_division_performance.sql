-- Section 1: Annual Division Performance Review
-- Tables: division_targets (dt), wonka_sales (ws)

SELECT
  EXTRACT(YEAR FROM ws.order_date) AS "Year",
  dt.division,
  dt.target AS annual_division_sales_target,
  ROUND(SUM(ws.sales),0) AS annual_division_sales,
  ROUND(ROUND(SUM(ws.sales),0) / dt.target,3) AS target_percent,
  dt.target - ROUND(SUM(ws.sales),0) AS target_difference,
  CASE
    WHEN ROUND(ROUND(SUM(ws.sales),0) / dt.target,3) > 1.5  THEN 'Significantly Above Target'
    WHEN ROUND(ROUND(SUM(ws.sales),0) / dt.target,3) > 1    THEN 'Above Target'
    WHEN ROUND(ROUND(SUM(ws.sales),0) / dt.target,3) = 1    THEN 'Target Met'
    WHEN ROUND(ROUND(SUM(ws.sales),0) / dt.target,3) > 0.5  THEN 'Below Target'
    WHEN ROUND(ROUND(SUM(ws.sales),0) / dt.target,3) > 0    THEN 'Significantly Below Target'
    ELSE 'Error'
  END AS target_outcome
FROM division_targets dt
JOIN wonka_sales ws ON dt.division = ws.division
GROUP BY "Year", dt.division, dt.target
ORDER BY "Year", target_percent DESC, dt.division;
