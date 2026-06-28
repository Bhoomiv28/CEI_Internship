# Week 2 – SQL Sales Data Analysis

## Objective
The objective of this assignment is to analyze sales data using SQL by applying filtering, aggregation, sorting, and business-oriented queries to extract useful insights from the dataset.

---

## Tools & Technologies
- MySQL
- MySQL Workbench
- VS Code
- Git & GitHub

---

## Dataset Overview
The dataset consists of the following tables:
- `customers` – stores customer details  
- `products` – contains product information and categories  
- `orders` – records order transactions  
- `order_items` – maps products to orders with quantity details  

These tables are connected using primary and foreign keys to represent a real-world sales database.

---

## Tasks Performed

### 1. Database Setup
- Selected the `cei_week2` database
- Verified table structure and data availability

### 2. Data Exploration
- Viewed sample records from all tables
- Checked data consistency and relationships

### 3. Filtering Data
- Applied `WHERE` conditions on:
  - Order dates
  - Sales amounts
  - Product categories

### 4. Aggregations
- Used `GROUP BY` to calculate:
  - Total sales per customer
  - Total quantity sold per product

### 5. Sorting & Limiting
- Identified top-selling products using `ORDER BY` and `LIMIT`

### 6. Business Use Cases
- Analyzed monthly sales trends
- Identified top customers based on total spending
- Checked for duplicate order records

### 7. Data Validation
- Verified row counts for all tables
- Ensured data quality through duplicate checks

---

## Key Insights
- Monthly sales trends help identify peak business periods
- A small number of customers contribute significantly to total revenue
- Top products can be identified based on total quantity sold
- No major data quality issues were found in the dataset

---

## Files Included
- `week_2.sql` – Contains all SQL queries used for analysis
- `README.md` – Documentation for the Week 2 assignment

---

## Conclusion
This assignment helped in understanding practical SQL usage for data analysis, including filtering, aggregation, and solving real-world business queries using structured data.