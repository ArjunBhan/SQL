select Warehouse_Number, space_left
from Warehouse
order by (space_left) 
;

select Customer_UserName, Customer_Name, Elite_Member 
from Customer
where Customer_UserName !="Tony_Man"
order by Elite_Member
;

select Warehouse_Number, space_left
from Warehouse
group by space_left
;

select *
from Manufacturers
where (Manufacturers_ID < 400 or Number_Item_Sold <= 500) and Manufacturers_Name = 'Leaf Corp'
;

select *
from Manufacturers
order by Manufacturers_Name
;

select Space_Taken
from  Warehouse
where Space_Taken > (select avg(Space_Taken)
from  Warehouse)
;

select Items_Price
from Sales S1 
	where S1.Items_Price > ALL
    (select Items_Price
from Sales S2
where S2.Sale_Code != S1.Sale_Code);


