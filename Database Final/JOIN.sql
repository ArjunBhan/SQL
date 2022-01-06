select Item_Wanted
from  Wish_List
inner join Products on  Wish_List.Item_Wanted = Product_Ordered
;

select Item_Wanted
from  Wish_List
UNION 
select Product_Ordered
from  Products
;

select Product_Ordered 
from Wish_List
right outer join Products
on  Products.Product_Ordered = Wish_List.Item_Wanted 
;
select Item_Wanted
from  Wish_List
left outer join Products
on Wish_List.Item_Wanted = Products.Product_Ordered
;

