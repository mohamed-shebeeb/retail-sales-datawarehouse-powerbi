-- =========================================
-- 01_create_tables.sql
-- Retail Sales Data Warehouse (Star Schema)
-- Database: retail_dw
-- =========================================

CREATE DATABASE IF NOT EXISTS retail_dw;
USE retail_dw;

-- =========================================
-- DIMENSION TABLE: dim_time
-- =========================================
CREATE TABLE IF NOT EXISTS dim_time (
    DateKey INT PRIMARY KEY,
    Date DATE NOT NULL,
    DayOfWeek INT,
    DayName VARCHAR(20),
    WeekNum INT,
    MonthNum INT,
    MonthName VARCHAR(20),
    Quarter INT,
    Year INT,
    IsWeekend TINYINT(1)
);

-- =========================================
-- DIMENSION TABLE: dim_orghierarchy
-- =========================================
CREATE TABLE IF NOT EXISTS dim_orghierarchy (
    BranchKey INT PRIMARY KEY,
    BranchName VARCHAR(100),
    RegionName VARCHAR(100),
    GroupName VARCHAR(100),
    Location VARCHAR(100)
);

-- =========================================
-- DIMENSION TABLE: dim_employee
-- =========================================
CREATE TABLE IF NOT EXISTS dim_employee (
    EmployeeKey INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Role VARCHAR(50),
    SupervisorKey INT NULL,
    SupervisorName VARCHAR(100)
);

-- =========================================
-- DIMENSION TABLE: dim_product
-- =========================================
CREATE TABLE IF NOT EXISTS dim_product (
    ProductKey INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Brand VARCHAR(50)
);

-- =========================================
-- FACT TABLE: fact_sales
-- =========================================
CREATE TABLE IF NOT EXISTS fact_sales (
    SaleID INT PRIMARY KEY,
    DateKey INT,
    BranchKey INT,
    EmployeeKey INT,
    ProductKey INT,
    Quantity INT,
    Revenue DECIMAL(12,2),
    Cost DECIMAL(12,2),
    TargetAmount DECIMAL(12,2)
);
