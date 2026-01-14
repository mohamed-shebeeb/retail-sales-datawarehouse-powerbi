SELECT 
  emp.SupervisorName,
  ROUND(SUM(fs.Revenue),2) AS TeamRevenue,
  ROUND(SUM(fs.TargetAmount),2) AS TeamTarget,
  ROUND((SUM(fs.Revenue)/SUM(fs.TargetAmount))*100,2) AS TeamAchievementPercent
FROM fact_sales fs
JOIN dim_employee emp ON fs.EmployeeKey = emp.EmployeeKey
WHERE emp.Role = 'Salesman'
GROUP BY emp.SupervisorName
ORDER BY TeamAchievementPercent DESC;
