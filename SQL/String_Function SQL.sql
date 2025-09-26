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



-- Get all the categories in Uppercase.
Select UPPER(category) AS Category_Capital from products;

-- Get all the categories in Lowercase.
Select LOWER(category) AS Category_Capital from products;


-- join product_name and category text eith hypen.
Select CONCAT(product_name,'-',category) AS Concat_Table from products;


-- Extract the first 5 characters from product_name
Select SUBSTRING(product_name, 1,5) AS Short_name From products;


-- count Length
Select product_name, LENGTH(product_name) AS COUNT_OF_CHAR From products; 


-- Remove leading and trailing space from string 
Select LENGTH(TRIM('     Monitor    ')) AS Trimmed_Test;
Select LENGTH('     Monitor    ') AS Trimmed_Test;


-- Replace the word "phone" with "Device" in product names
Select REPLACE(product_name, 'phone','device') AS updated From products;


-- Get the first 3 characters from category
Select LEFT(category, 4) AS Category_capital from products;

Select RIGHT(category, 4) AS Category_capital from products;





