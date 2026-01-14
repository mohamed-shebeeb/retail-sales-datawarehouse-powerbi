SELECT 
  CASE WHEN dt.IsWeekend = 1 THEN 'Weekend' ELSE 'Weekday' END AS DayType,
  ROUND(SUM(fs.Revenue),2) AS Revenue
FROM fact_sales fs
JOIN dim_time dt ON fs.DateKey = dt.DateKey
GROUP BY DayType;
