SELECT 
  dt.Year,
  dt.MonthName,
  ROUND(SUM(fs.Revenue),2) AS Revenue,
  ROUND(SUM(fs.TargetAmount),2) AS Target,
  ROUND((SUM(fs.Revenue)/SUM(fs.TargetAmount))*100,2) AS AchievementPercent
FROM fact_sales fs
JOIN dim_time dt ON fs.DateKey = dt.DateKey
GROUP BY dt.Year, dt.MonthNum, dt.MonthName
ORDER BY dt.Year, dt.MonthNum;
