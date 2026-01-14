# Retail Sales Data Warehouse & Power BI Dashboard (2024–2025)

## Project Overview
This project demonstrates an end-to-end Sales Data Warehouse implementation using a **Star Schema** in **MySQL Workbench** and an interactive **Power BI dashboard** for analytics.

## Tools Used
- MySQL Workbench (Database design + SQL)
- Microsoft Excel (Data generation & CSV export)
- Power BI Desktop (Modeling + DAX + Dashboard)
- GitHub (Project hosting)

## Data Warehouse Model (Star Schema)
### Dimension Tables
- dim_time (Date attributes for 2024–2025)
- dim_orghierarchy (Branch / Region / Group)
- dim_employee (Employee + Supervisor hierarchy)
- dim_product (Product details)

### Fact Table
- fact_sales (Quantity, Revenue, Cost, TargetAmount)

## Key Analyses
- Revenue vs Target achievement %
- Profit and Profit Margin
- Branch performance (Top branches)
- Product performance (Top products)
- Employee & Supervisor team performance
- Monthly trend analysis (Revenue, Cost, Target)

## Dashboard Pages
1. Executive Overview (KPIs + trends + top branch/product + achieved vs not achieved)
2. Employee Performance (Top employees + achievement % + supervisor team matrix)

## Files Included
- SQL scripts (table creation, constraints, analysis queries)
- Power BI `.pbix` file
- CSV datasets (dim + fact)
- Report PDFs and dashboard screenshots
