SELECT 
  ROUND(SUM(Revenue),2) AS TotalRevenue,
  ROUND(SUM(TargetAmount),2) AS TotalTarget,
  ROUND(SUM(Revenue) - SUM(TargetAmount),2) AS Difference,
  ROUND((SUM(Revenue)/SUM(TargetAmount))*100,2) AS AchievementPercent
FROM fact_sales;
