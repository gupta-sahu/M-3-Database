CREATE DATABASE SalesDB;
USE SalesDB;
CREATE TABLE Sales (
sale_id INT PRIMARY KEY,
product_name VARCHAR(100),
customer_name VARCHAR(100),
quantity INT,
price_per_unit DECIMAL(10,2),
sale_date DATE
);
INSERT INTO Sales (sale_id, product_name, customer_name, quantity, price_per_unit, sale_date)
VALUES
(1, 'laptop', 'Alisha', 2, 750.50, '2024-01-01'),
(2, 'Phone', 'Bella', 5, 300.99, '2024-01-05'),
(3, 'Tablet', 'chirag', 3, 450.75, '2024-01-10'),
(4, 'Monitor', 'Deepika', 1, 200.00, '2024-01-15');
SELECT COUNT(*) AS total_sales FROM Sales;
SELECT SUM(quantity * price_per_unit) AS total_revenue, AVG(quantity * price_per_unit) AS avg_revenue FROM Sales;
SELECT MAX(price_per_unit) AS maximm_price FROM Sales;
SELECT MIN(price_per_unit) AS minimum_price FROM Sales;
SELECT CONCAT(product_name, 'sold to', customer_name) AS sale_description FROM sales;
SELECT UPPER(product_name) AS upper_product FROM sales;
SELECT LOWER(product_name) AS lower_product FROM sales;
SELECT NOW() AS 'current_date_time';
SELECT CURDATE() AS 'current_date';
SELECT ROUND(AVG(price_per_unit)) AS average_price FROM Sales;
SELECT CEIL(AVG(price_per_unit)) AS ceiling_price FROM Sales;
SELECT FLOOR(AVG(price_per_unit)) AS floor_rice FROM Sales;

UPDATE sale
SET sale_date = DATE_ADD(sale_date, INTERVAL 30 DAY)
WHERE sale_id = 1;
select*from sales; 

























