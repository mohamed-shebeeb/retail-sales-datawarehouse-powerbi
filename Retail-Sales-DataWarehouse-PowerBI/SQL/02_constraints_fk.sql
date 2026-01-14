USE retail_dw;

-- =========================================
-- FOREIGN KEYS FOR FACT TABLE
-- =========================================

-- FK: fact_sales.DateKey -> dim_time.DateKey
ALTER TABLE fact_sales
ADD CONSTRAINT fk_time
FOREIGN KEY (DateKey)
REFERENCES dim_time(DateKey);

-- FK: fact_sales.BranchKey -> dim_orghierarchy.BranchKey
ALTER TABLE fact_sales
ADD CONSTRAINT fk_branch
FOREIGN KEY (BranchKey)
REFERENCES dim_orghierarchy(BranchKey);

-- FK: fact_sales.EmployeeKey -> dim_employee.EmployeeKey
ALTER TABLE fact_sales
ADD CONSTRAINT fk_employee
FOREIGN KEY (EmployeeKey)
REFERENCES dim_employee(EmployeeKey);

-- FK: fact_sales.ProductKey -> dim_product.ProductKey
ALTER TABLE fact_sales
ADD CONSTRAINT fk_product
FOREIGN KEY (ProductKey)
REFERENCES dim_product(ProductKey);


-- =========================================
-- EMPLOYEE HIERARCHY (SELF-REFERENCE FK)
-- =========================================

-- FK: dim_employee.SupervisorKey -> dim_employee.EmployeeKey
ALTER TABLE dim_employee
ADD CONSTRAINT fk_supervisor
FOREIGN KEY (SupervisorKey)
REFERENCES dim_employee(EmployeeKey)
ON DELETE SET NULL
ON UPDATE CASCADE;
