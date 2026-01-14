SELECT 
  CASE WHEN Revenue >= TargetAmount THEN 'Achieved' ELSE 'Not Achieved' END AS Status,
  COUNT(*) AS SalesCount
FROM fact_sales
GROUP BY Status;
