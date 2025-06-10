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
    