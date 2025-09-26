-- This is not add in the Real Table.
select * from products;

select name, price,
CASE when (price > 1000) then 'Expensive'
	 when price between 500 and 1000 then 'Moderate'
	 Else 'Cheap'
End as price_tag 
From products;


-- Add to Real Table.
ALTER Table products
Add Column price_tag Text;

UPdate products
set price_tag = 
CASE 
	 when (price > 1000) then 'Expensive'
	 when price between 500 and 1000 then 'Moderate'
	 Else 'Cheap'
End;

select * from products;
