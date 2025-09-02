select * from products;

select * from products where category = 'Electronics';

select * from products where price < 1000 and category = 'Electronics';

select * from products where price Between 400 and 1000;

select * from products where category in ('Electronics','Home & Kitchen','Fitness');


select * from products where sku_code like 'W%';

select * from products where sku_code like '%123%';

select * from products where sku_code like '_B%';

select * from products where not category = 'Electronics';
