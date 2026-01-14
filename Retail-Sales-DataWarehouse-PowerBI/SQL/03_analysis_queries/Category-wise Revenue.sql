SELECT 
  prod.Category,
  ROUND(SUM(fs.Revenue),2) AS Revenue
FROM fact_sales fs
JOIN dim_product prod ON fs.ProductKey = prod.ProductKey
GROUP BY prod.Category
ORDER BY Revenue DESC;
