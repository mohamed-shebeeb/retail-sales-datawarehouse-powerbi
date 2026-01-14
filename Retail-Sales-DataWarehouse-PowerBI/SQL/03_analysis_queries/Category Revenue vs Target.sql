SELECT 
  prod.Category,
  ROUND(SUM(fs.Revenue),2) AS Revenue,
  ROUND(SUM(fs.TargetAmount),2) AS Target,
  ROUND((SUM(fs.Revenue)/SUM(fs.TargetAmount))*100,2) AS AchievementPercent
FROM fact_sales fs
JOIN dim_product prod ON fs.ProductKey = prod.ProductKey
GROUP BY prod.Category
ORDER BY AchievementPercent DESC;
