SELECT 
  prod.ProductName,
  ROUND(SUM(fs.Revenue),2) AS Revenue
FROM fact_sales fs
JOIN dim_product prod ON fs.ProductKey = prod.ProductKey
GROUP BY prod.ProductName
ORDER BY Revenue DESC
LIMIT 5;
