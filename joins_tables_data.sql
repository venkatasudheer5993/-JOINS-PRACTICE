/*  Performing join operations like left,Right,Full,Inner joins in relational tables.
  Create Customer table,product table and order table.Performing various join operations on these tables.
  Creating Customer table in MYSQL Database   */
 create table Customer_details(Customer_ID int Primary key,
                          Customer_Name varchar(28),
                         Email varchar(50),
                         City varchar(28),
                         Country varchar(50));
/* inserting data into Customer_details table */  
 insert into Customer_details(Customer_ID,Customer_Name,Email,City,Country)
  VALUES
   (1,'Venkata Sudheer','darling@gamil.com','Kadapa','India'),
   (28,'Venkatesh','venkatesh@gmail.com','Berlin','Germany'),
   (7,'Balaji','balaji972@gmail.com','London','Uk'),
   (75,'Kishor','kishukishore@gmail.com','Berlin','Germany'),
   (290,'vamsi krishna','darlingkrishna@gmail.com','Toulouse','France'),
   (730,'Sagar','sagar568@gmail.com','Banglore','India'),
   (850,'Harish','harishkumar@gmail.com','Mannheim','Germany'),
   (12,'lokesh','lokeshreddy@gmail.com','Vancour','Canada'),
   (98,'Sreeram','killerboyram@gmail.com','Delhi','India'),
   (35,'Surya','suryaking@gmail.com','Montreal','Canada'),
   (26,'ROhith','rohithdevil@gmail.com','Walla Walla','USA'),
   (37,'Kumar','Kumar5673@gmail.com','Vizag','India'),
   (56,'BlajiRao','raobalaji@gmail.com','Aachen','Germany'),
   (72,'Venkata lakshmi','lakshmivenkata@gmail.com','Portland','USA'),
   (84,'Usha sree','sreeushadarling@gmail.com','Hyderabad','India'),
   (5,'Sai pallavi reddy','pallavireddy@gmail.com','paris','France');
   /* Fetching customer_details from the MYSQL Database */
select*from customer_details;
/*Creating product table in MYSQL Database*/
create table Product_details(product_id int Primary key,
                             product_name varchar(50),
                             unit varchar(20),
                             price int,
                             category varchar(30));
    /*inserting data into product_details table */                       
insert into Product_details(product_id,product_name,unit,price,category) 
VALUES
 (1,'Wireless mouse','piece',1330,'Electronics'),
(2,'USB-c charger','piece',1540,'Electronics'),
(3,'Wheat bread','piece',208,'Grocery'),
(4,'A4 notebooks','piece',260,'Stationery'),
(5,'Ball pen','piece',50,'Stationery'),
(6,'Office chair','piece',6559,'Furniture'),
(7,'Wooden desk','piece',12450,'Furniture'),
(8,'Cotton t-shirt','piece',1078,'Clothing'),
(9,'Denim jeans','piece',2905,'Clothing'),
(10,'Running Shoes','pair',4565,'Clothing'),
(11,'Fresh milk','liter',107,'Grocery'),
(12,'Brown eggs','Dozen',95,'Grocery'),
(13,'White rice','kg',91,'Grocery'),
(14,'Freedom oil','liter',175,'Grocery'),
(15,'Laptop','piece',66317,'Electronics'),
(16,'Apples','kg',220,'Grocery');
/* Fetching  product_details from the MYSQL Database */
select*from Product_details;
/* creating order_details table in MYSQL Database */
create table Order_details(order_id int primary key,
						  product_id int,
                          quantity int,
                          order_date date,
                          payment_method varchar(40));
/* Inserting data into  order_details table */
insert into Order_details(order_id,product_id,quantity,order_date,payment_method) 
VALUES
(001,3,5,'2025-05-05','online transaction'),
(175,10,2,'2025-02-7','online transaction'),
(092,1,1,'2025-06-06','cash on delivery'),
(056,12,10,'2025-03-05','online transaction'),
(034,7,1,'2025-5-24','cash on delivery'),
(007,16,7,'2025-04-17','online transaction'),
(156,13,70,'2025-06-07','cash on delivery'),
(782,8,5,'2024-04-18','online transaction'),
(512,14,30,'2025-01-09','online transaction'),
(954,15,2,'2025-02-10','cash on delivery'),
(270,4,10,'2025-03-13','online transaction'),
(855,11,3,'2025-05-17','cash on delivery'),
(135,2,1,'2025-04-01','online transaction'),
(480,9,8,'2025-03-29','onlinr transaction'),
(368,13,40,'2025-02-25','cash on delivery'),
(579,5,100,'2025-01-18','online transaction'),
(720,12,30,'2025-05-30','cash on delivery');
/*Fetching order_details from the MYSQL Database */
select*from Order_details;
/* alter the structure of the order_details table by adding extra column "customer_id" */
ALTER TABLE Order_details
ADD Customer_ID INT;
/* Updating the data of the order_details table */
UPDATE Order_details SET Customer_ID = 1 WHERE order_id = 1;
UPDATE Order_details SET Customer_ID = 28 WHERE order_id = 175;
UPDATE Order_details SET Customer_ID = 7 WHERE order_id = 92;
UPDATE Order_details SET Customer_ID = 75 WHERE order_id = 56;
UPDATE Order_details SET Customer_ID = 290 WHERE order_id = 34;
UPDATE Order_details SET Customer_ID = 730 WHERE order_id = 7;
UPDATE Order_details SET Customer_ID = 850 WHERE order_id = 156;
UPDATE Order_details SET Customer_ID = 12 WHERE order_id = 782;
UPDATE Order_details SET Customer_ID = 98 WHERE order_id = 512;
UPDATE Order_details SET Customer_ID = 35 WHERE order_id = 954;
UPDATE Order_details SET Customer_ID = 26 WHERE order_id = 270;
UPDATE Order_details SET Customer_ID = 37 WHERE order_id = 855;
UPDATE Order_details SET Customer_ID = 56 WHERE order_id = 135;
UPDATE Order_details SET Customer_ID = 72 WHERE order_id = 480;
UPDATE Order_details SET Customer_ID = 84 WHERE order_id = 368;
UPDATE Order_details SET Customer_ID = 5 WHERE order_id = 579;
UPDATE Order_details SET Customer_ID = 1 WHERE order_id = 720;
/* After updating fetching the order_details */
select*from Order_details;

/* perform the different types of join operations */
/* 1. "INNER JOIN or NORMAL JOIN"
performing INNER JOIN operation on Customer_details table,order_details table,product_details table */

SELECT 
    c.Customer_ID,
    c.Customer_Name,
    o.order_date,
    (o.quantity*p.price) as Total_amount
FROM 
    Customer_details c
INNER JOIN 
    Order_details o ON c.Customer_ID = o.Customer_ID
INNER JOIN
    Product_details p ON p.product_id = o.product_id
    where p.product_id<10
    ORDER BY Customer_id;
    
/* 2."LEFT OUTER JOIN"
performing LEFT OUTER JOIN operation on Customer_details table,order_details table,product_details table */

SELECT 
    c.Customer_ID,
    c.Customer_Name,
     p.product_name,
	o.quantity,
    p.price,
    o.order_date,
    (o.quantity*p.price) as Total_amount
FROM 
    Customer_details c
LEFT JOIN 
    Order_details o ON c.Customer_ID = o.Customer_ID
LEFT JOIN 
    Product_details p ON o.product_id = p.product_id
    where price>100
    ORDER BY quantity ASC;
    
    /* 3."RIGHT OUTER JOIN"
performing RIGHT OUTER JOIN operation on Customer_details table,order_details table,product_details table */

 SELECT 
     o.order_id,
    p.product_name,
    o.quantity,
    c.City as Location
FROM 
    Order_details o
RIGHT JOIN 
    Product_details p ON o.product_id = p.product_id
RIGHT JOIN 
    Customer_details c ON o.Customer_ID = c.Customer_ID 
    where quantity <=40
    ORDER BY city ASC;
    
     /* 4."FULL OUTER JOIN simulation(UNION)"
     FULL OUTER JOIN doesn't support in MYSQL server
     If you want to combine three tables by using "union" operation */
     
	SELECT 
    c.Customer_ID,
     o.order_id,
     p.product_id,
    c.Customer_Name,
    p.product_name,
    o.quantity,
    p.price,
    o.order_date,
    (o.quantity*price) as Total_Amount
    FROM 
    Customer_details c
    LEFT JOIN 
    Order_details o ON c.Customer_ID = o.Customer_ID
 LEFT JOIN 
    Product_details p ON o.product_id = p.product_id
UNION
SELECT 
c.Customer_ID,
     o.order_id,
     p.product_id,
    c.Customer_Name,
    p.product_name,
    o.quantity,
    p.price,
    o.order_date,
    (o.quantity*price) as Total_Amount
FROM 
    Customer_details c
RIGHT JOIN 
    Order_details o ON c.Customer_ID = o.Customer_ID
RIGHT JOIN 
    Product_details p ON o.product_id = p.product_id
    ORDER BY product_id ASC;
    