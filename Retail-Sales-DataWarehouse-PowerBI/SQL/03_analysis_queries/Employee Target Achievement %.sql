SELECT 
  emp.EmployeeName,
  ROUND(SUM(fs.Revenue),2) AS Revenue,
  ROUND(SUM(fs.TargetAmount),2) AS Target,
  ROUND((SUM(fs.Revenue)/SUM(fs.TargetAmount))*100,2) AS AchievementPercent
FROM fact_sales fs
JOIN dim_employee emp ON fs.EmployeeKey = emp.EmployeeKey
WHERE emp.Role = 'Salesman'
GROUP BY emp.EmployeeName
ORDER BY AchievementPercent DESC;
