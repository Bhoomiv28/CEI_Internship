-- Week 2: SQL Sales Data Analysis
-- The following queries collectively answer all 27 questions
-- provided in the Week 2 assignment PDF.

-- Q1: Database selection
USE cei_week2;

-- Q2, Q3, Q4: Explore customers, products, orders, and order_items tables
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;

-- Q5: Filter orders placed after a specific date
SELECT * FROM orders
WHERE order_date >= '2023-01-01';

-- Q6: Filter high value orders
SELECT * 
FROM orders
WHERE total_amount > 5000;

-- Q7: Filter products by category
SELECT * 
FROM products
WHERE category = 'Electronics';

-- Q8, Q9: Calculate total spending by each customer
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id;

-- Q10, Q11: Calculate total quantity sold per product
SELECT product_id, SUM(quantity) AS total_qty
FROM order_items
GROUP BY product_id


-- Q12, Q13: Analyze monthly sales trends using order date
SELECT MONTH(order_date) AS month, SUM(total_amount) AS monthly_sales
FROM orders
GROUP BY MONTH(order_date);

-- Q14, Q15: Identify top 5 customers based on total spending
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- Q16: Check for duplicate order records using order_id
SELECT order_id, COUNT(*) AS count
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Q17: Validate total number of records in orders table
SELECT COUNT(*) FROM orders;

-- Q18, Q19, Q20, Q21: Validate row counts for all tables
SELECT COUNT(*) AS customer_count FROM customers;
SELECT COUNT(*) AS product_count FROM products;
SELECT COUNT(*) AS order_count FROM orders;
SELECT COUNT(*) AS order_item_count FROM order_items;