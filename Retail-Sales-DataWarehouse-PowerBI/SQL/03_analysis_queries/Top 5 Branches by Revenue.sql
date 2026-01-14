SELECT 
  org.BranchName,
  ROUND(SUM(fs.Revenue),2) AS Revenue
FROM fact_sales fs
JOIN dim_orghierarchy org ON fs.BranchKey = org.BranchKey
GROUP BY org.BranchName
ORDER BY Revenue DESC
LIMIT 5;
