#Sales
USE homework4;

INSERT INTO Customer VALUES("Tony_Man","Tony Tyler Black","Tony_Man@hotmail.com","Acton, MA", false);
INSERT INTO Customer VALUES("Tom Coppola","Thomas Brian Coppola","TomCop@yahoo.com","Albany, NY", true);
INSERT INTO Customer VALUES("Talia123","Talia Rachel Brown","Taltal@gmail.com","Westchester, NY",true);
INSERT INTO Customer VALUES("Gabe Mathews","Gabriel Jose Mathews","THEGAB@gmail.com","New London, CT",false);
INSERT INTO Customer VALUES("JoshDav","Josh Mario Davidson","JoshDav@hotmail.com","Boston, MA", true);

INSERT INTO Manufacturers VALUES(123,"ComputerTech",500);
INSERT INTO Manufacturers VALUES(343,"Leaf Corp",451);
INSERT INTO Manufacturers VALUES(435,"TV Makers",332);
INSERT INTO Manufacturers VALUES(400,"Leaf Corp",858);
INSERT  INTO Manufacturers VALUES(789,"TV Makers",117);

INSERT INTO Wish_list VALUES(905,"Christmas List","Remote",10.50,"Gabe Mathews");
INSERT INTO Wish_list VALUES(325,"Birthday List","TV",1000.20,"Talia123");
INSERT INTO Wish_list VALUES(470,"Wish List 3","Mouse",6.00,"Tony_Man");
INSERT INTO Wish_list VALUES(261,"Christmas List","Mini TV",60.00,"Tom Coppola");
INSERT INTO Wish_list VALUES(582,"Wants","Laptop",300.75,"JoshDav");

INSERT INTO  ORDERS VALUES("Radio", 1, 1, "Gabe Mathews");
INSERT INTO  ORDERS VALUES("Mouse", 94320, 5, "Tony_Man");
INSERT INTO  ORDERS VALUES("Laptop", 120321, 1, "Talia123");
INSERT INTO  ORDERS VALUES("Remote", 54, 3, "Tom Coppola");
INSERT INTO  ORDERS VALUES("Flash Light", 12453, 2, "JoshDav");

INSERT INTO Review VALUES(391,"March 12 2018",5.0,"Tony_Man");
INSERT INTO Review VALUES(874,"April 23 2019",4.5 ,"Tom Coppola");
INSERT INTO Review VALUES(542,"June 3 2018",4.0 ,"Talia123");
INSERT INTO Review VALUES(303,"May 17 2019",1.5 ,"Gabe Mathews");
INSERT INTO Review VALUES(827,"July 17 2019",2.0 ,"JoshDav");

INSERT INTO Warehouse VALUES(1, 58, 89, "Los Angeles, CA");
INSERT INTO  Warehouse VALUES(2, 94, 65, "Houston,TX");
INSERT INTO  Warehouse VALUES(3, 194, 6, "Albany, NY");
INSERT INTO  Warehouse VALUES(4, 64, 75, "Los Angeles,CA");
INSERT INTO  Warehouse VALUES(5, 155, 0, "Boston, MA");

INSERT INTO Sales VALUES(326, 90.00, "Cash","Radio");
INSERT INTO Sales VALUES(412, 10.00, "Credit Card","Mouse");
INSERT INTO Sales VALUES(600, 30.00, "Debit Card","Flash Light");
INSERT INTO Sales VALUES(554, 400.00, "Cash","Laptop");
INSERT INTO Sales VALUES(123, 90.00, "Check","Remote");

INSERT INTO Shipment VALUES(03211,'2019-10-07',"Travelers",3,"Tom Coppola");
INSERT INTO Shipment VALUES(75741,'2019-11-04',"Shippers",2,"Tony_Man");
INSERT INTO Shipment VALUES(03214,'2019-01-06',"Travelers",1,"JoshDav");
INSERT INTO Shipment VALUES(15203,'2019-12-10',"Travelers",3,"Talia123");
INSERT INTO Shipment VALUES(43256,'2019-09-09',"Travelers",3,"Gabe Mathews");

INSERT INTO  PRODUCTS VALUES(48, "Controlling device", "Remote",400);
INSERT INTO  PRODUCTS VALUES(94, "Communication device", "Radio",435);
INSERT INTO  PRODUCTS VALUES(83, "Lighter", "Flash Light", 123);
INSERT INTO  PRODUCTS VALUES(51, "Computing Device", "Laptop", 343);
INSERT INTO  PRODUCTS VALUES(64,  "Controlling device", "Mouse",789);

