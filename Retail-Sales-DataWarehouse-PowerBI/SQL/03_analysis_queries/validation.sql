SELECT 
    fs.SaleID,
    dt.Date,
    org.BranchName,
    emp.EmployeeName,
    emp.Role,
    prod.ProductName,
    fs.Quantity,
    fs.Revenue,
    fs.TargetAmount
FROM fact_sales fs
JOIN dim_time dt ON fs.DateKey = dt.DateKey
JOIN dim_orghierarchy org ON fs.BranchKey = org.BranchKey
JOIN dim_employee emp ON fs.EmployeeKey = emp.EmployeeKey
JOIN dim_product prod ON fs.ProductKey = prod.ProductKey
LIMIT 10;
