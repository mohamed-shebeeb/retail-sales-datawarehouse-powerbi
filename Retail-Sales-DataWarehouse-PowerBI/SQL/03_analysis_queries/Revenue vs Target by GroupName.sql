SELECT 
  org.GroupName,
  ROUND(SUM(fs.Revenue),2) AS Revenue,
  ROUND(SUM(fs.TargetAmount),2) AS Target,
  ROUND((SUM(fs.Revenue)/SUM(fs.TargetAmount))*100,2) AS AchievementPercent
FROM fact_sales fs
JOIN dim_orghierarchy org
  ON fs.BranchKey = org.BranchKey
GROUP BY org.GroupName
ORDER BY Revenue DESC;
