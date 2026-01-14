SELECT 
  emp.EmployeeName,
  ROUND(SUM(fs.Revenue),2) AS Revenue
FROM fact_sales fs
JOIN dim_employee emp ON fs.EmployeeKey = emp.EmployeeKey
WHERE emp.Role = 'Salesman'
GROUP BY emp.EmployeeName
ORDER BY Revenue DESC
LIMIT 10;
