Drop database homework4;
create database homework4;
USE homework4;

CREATE TABLE Warehouse(
Warehouse_Number SMALLINT NOT NULL,
Space_Taken NUMERIC NOT NULL,
Space_Left NUMERIC NOT NULL,
Storage_Location VARCHAR(40) NOT NULL,
CONSTRAINT Warehouse_PK PRIMARY KEY(Warehouse_Number)
);

CREATE TABLE Customer(
Customer_UserName VARCHAR(20) NOT NULL,
Customer_Name VARCHAR(40) NOT NULL,
Customer_Email VARCHAR(30) NOT NULL,
Customer_Address  VARCHAR(30) NOT NULL,
Elite_Member BOOLEAN NOT NULL,
CONSTRAINT Customer_PK PRIMARY KEY(Customer_UserName)
);

CREATE TABLE Manufacturers(
Manufacturers_ID NUMERIC NOT NULL,
Manufacturers_Name VARCHAR(40) NOT NULL,
Number_Item_Sold NUMERIC NOT NULL,
CONSTRAINT Manufacturers_PK PRIMARY KEY(Manufacturers_ID)
);

CREATE TABLE Review(
Review_Number NUMERIC NOT NULL,
Date_Reviewed VARCHAR(20) NOT NULL,
Rating DOUBLE NOT NULL,
Customer_UserName VARCHAR(20) NOT NULL,
CONSTRAINT Review_PK PRIMARY KEY(Review_Number),
CONSTRAINT Customer_FK Foreign KEY(Customer_UserName) references Customer(Customer_UserName)
);

CREATE TABLE Orders(
Product_Ordered VARCHAR(30) NOT NULL,
Time_Ordered TIME NOT NULL,
Amount_Ordered NUMERIC NOT NULL,
Customer_UserName VARCHAR(20) NOT NULL,
CONSTRAINT Orders_PK PRIMARY KEY(Product_Ordered),
CONSTRAINT Customer_FK2 Foreign KEY(Customer_UserName) references Customer(Customer_UserName)
);

CREATE TABLE Products(
Product_ID NUMERIC NOT NULL,
Product_Type VARCHAR(30) NOT NULL,
Product_Ordered VARCHAR(20) NOT NULL,
Manufacturers_ID NUMERIC NOT NULL,
CONSTRAINT Products_PK PRIMARY KEY(Product_ID),
CONSTRAINT Orders_FK Foreign KEY(Product_Ordered) references Orders(Product_Ordered),
CONSTRAINT Manufacturers_FK Foreign KEY(Manufacturers_ID) references Manufacturers(Manufacturers_ID)
);

CREATE TABLE Shipment(
Shipment_ID NUMERIC NOT NULL,
Date_Shiped DATE NOT NULL,
Shipment_Company VARCHAR(20) NOT NULL,
Warehouse_Number SMALLINT NOT NULL,
Customer_UserName VARCHAR(20) NOT NULL,
CONSTRAINT Shipment_PK PRIMARY KEY(Shipment_ID),
CONSTRAINT Warehouse_FK Foreign KEY(Warehouse_Number) references Warehouse(Warehouse_Number),
CONSTRAINT Customer_FK3 Foreign KEY(Customer_UserName) references Customer(Customer_UserName)
);

CREATE TABLE Sales(
Sale_Code NUMERIC NOT NULL,
Items_Price DECIMAL NOT NULL,
Payment_Option VARCHAR(20) NOT NULL,
Product_Ordered VARCHAR(20) NOT NULL,
CONSTRAINT Sales_PK PRIMARY KEY(Sale_Code),
CONSTRAINT Products_FK Foreign KEY(Product_Ordered) references Orders(Product_Ordered)
);

CREATE TABLE Reviews(
Review_Number NUMERIC NOT NULL,
Date_Reviewed VARCHAR(20) NOT NULL,
Rating DOUBLE NOT NULL,
Customer_UserName VARCHAR(20) NOT NULL,
CONSTRAINT Reviews_PK PRIMARY KEY(Review_Number),
CONSTRAINT Customer_FK4 Foreign KEY(Customer_UserName) references Customer(Customer_UserName)
);

CREATE TABLE Wish_List(
Wish_List_ID NUMERIC NOT NULL,
Wish_List_Title VARCHAR(20) NOT NULL,
Item_Wanted TEXT NOT NULL,
Total_Price DOUBLE NOT NULL,
Customer_UserName VARCHAR(20) NOT NULL,
CONSTRAINT Wish_List_PK PRIMARY KEY(Wish_List_ID),
CONSTRAINT Customer_FK5 Foreign KEY(Customer_UserName) references Customer(Customer_UserName)
);
