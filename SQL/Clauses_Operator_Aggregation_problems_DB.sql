select name, price from products 
where price = (select min(price) from products);


select round(avg(price),2) from products 
where category in ('Home & Kitchen','Fitness');


select * from products;


select name, stock_quantity 
from products 
where is_available = True and stock_quantity > 50 and price != 299.00;


select category, Max(price) as Max_price 
from products 
Group by category;


Select distinct upper(category) as category_upper 
From products 
Order by category_upper DESC;

-- distinct for unique.