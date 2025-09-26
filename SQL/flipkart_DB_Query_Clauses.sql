select name, price from products;


select * from products where category = 'Electronics';


select category from products Group by category;


select category, count(*) from products 
Group by category
Having count(*) > 1;


select * from products order by price ASC;
select * from products order by price DESC;

select * from products order by name ASC;
select * from products order by name DESC;


select * from products limit 3;


select name as item_name, price as item_price from products;


select Distinct category from products;


