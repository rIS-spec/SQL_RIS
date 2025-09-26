CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5, 2)
);

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);


SELECT * FROM products;


-- 1. Now() - Get Current Date and Time
Select NOW() AS CURRENT_DATETIME;


-- 2. CURRENT_DATE() - Get Current Date
Select CURRENT_DATE AS today_date;

Select CURRENT_DATE, added_date, (CURRENT_DATE - added_date) AS Days_differ from products;


-- 3. EXTRACT() - Extract Parts of a Date
-- Extract the year, month and day from the added_date column.
Select product_name,
		Extract(YEAR FROM added_date) AS Year_Added,
		Extract(MONTH FROM added_date) AS Month_Added,
		Extract(DAY FROM added_date) AS Day_Added
From products;


-- 4. AGE() – Calculate Age Between Dates
-- Calculate the time difference between added_date and today’s date.
Select product_name,
		AGE(CURRENT_DATE, added_date) AS Age_since_added
From products;


-- 5. TO_CHAR() – Format Dates as Strings
-- Format added_date in a custom format (DD-Mon-YYYY).
Select product_name,
		TO_CHAR(added_date, 'DD-Mon-YYYY') AS FORMATED_DATE
From products;

Select product_name,
		TO_CHAR(added_date, 'DD-Mon-YY') AS FORMATED_DATE
From products;


-- 6. DATE_PART() – Get Specific Date Part
-- Extract the day of the week from added_date.Like this (0-6)->(Sunday to Monday) 
Select product_name, added_date,
		DATE_PART('dow', added_date) AS day_of_week
From products;

Select product_name, added_date,
		DATE_PART('month', added_date) AS day_of_month
From products;

Select product_name, added_date,
		DATE_PART('year', added_date) AS day_of_year
From products;


-- 7. DATE_TRUNC() – Truncate Date to Precision
-- Truncate added_date to the start of the month.
Select product_name, added_date,
		DATE_TRUNC('week', added_date) AS Week_start,
		DATE_PART('isodow', added_date) AS day_of_week
From products;

Select product_name, added_date,
		DATE_TRUNC('month', added_date) AS Month_start
From products;


-- 8. INTERVAL – Add or Subtract Time Intervals
-- Add 6 months to the added_date.
SELECT product_name, added_date,
		added_date + INTERVAL '6 months' AS new_date
FROM products;



-- 9. CURRENT_TIME() – Get Current Time
--Retrieve only the current time.

SELECT CURRENT_TIME AS current_time;



-- 10. TO_DATE() – Convert String to Date
-- Convert a string to a date format.

SELECT TO_DATE('28-11-2024', 'DD-MM-YYYY') AS converted_date;




