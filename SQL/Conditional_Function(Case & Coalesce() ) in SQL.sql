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




--        CASE FUNCTION       --

/* 1. CASE Function – Categorizing Based on Conditions
 We will categorize products into price ranges:

Expensive if the price is greater than or equal to 50,000.
Moderate if the price is between 10,000 and 49,999.
Affordable if the price is less than 10,000.
*/

SELECT product_name, price,
		CASE
			WHEN price>=50000 THEN 'Expensive'
			WHEN price>=10000 AND price<=49999 THEN 'Moderate'
			ELSE 'Affordable'
		END AS price_category
FROM products;
			


/* 2. CASE with AND & OR Operators – Stock Status
We will classify products based on quantity available:

In Stock if quantity is 10 or more.
Limited Stock if quantity is between 5 and 9.
Out of Stock Soon if quantity is less than 5.
*/

SELECT product_name, quantity, 
		CASE
			WHEN quantity >=10 THEN 'InStock'
			WHEN quantity BETWEEN 6 AND 9 THEN 'Limited stock'
			ELSE 'Out of stock soon'
		END AS stock_status
FROM products;



/* 3. CASE with LIKE Operator – Category Classification
Check if the category name contains "Electronics" or "Furniture" using LIKE.
*/

SELECT product_name, category, 
		CASE
			WHEN category LIKE 'Electronics%' THEN 'Electronic Item'
			WHEN category LIKE 'Furniture%' THEN 'Furniture Item'
			ELSE 'Accessory Item'
		END AS category_Status
FROM products;






--         COALESCE() FUNCTION     ---
-- Handling NULL Values

ALTER TABLE products
DROP COLUMN discount_price;

ALTER TABLE products 
ADD COLUMN discount_price NUMERIC(10,2);



UPDATE products
SET discount_price = NULL
WHERE product_name IN('Laptop','Desk');

UPDATE products
SET discount_price = price*0.9
WHERE product_name NOT IN('Laptop','Desk');


SELECT product_name, price, discount_price 
FROM products;


SELECT product_name, 
		COALESCE(discount_price, price) AS Final_price
FROM products;

