select count(product_id) from products;

select price from products;

select sum(price) from products;

select sum(price) from products where category = 'Electronics' or category = 'Fitness';


select round(avg(price),2) from products;