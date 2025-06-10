# -JOINS-PRACTICE

"COMPANY": COTECH IT SOLUTIONS

"NAME": THIRUVEEDHULA VENKATA SUDHEER

"INTERN ID": CT06DF153

"DOMAIN": SQL INTERN

"DURATION": 6 WEEKS

"MENTOR": Neela Santhosh Kumar


######################

SQL task Summary: "Join Operations on Relational "

This task focuses on implementing and demonstrating different types of SQL JOIN operations in a MySQL relational database using three core tables: Customer_details, Product_details, and Order_details. The main objective was to showcase how data from multiple tables can be combined and analyzed using various joins such as INNER JOIN, LEFT JOIN, RIGHT JOIN, and a simulated FULL OUTER JOIN.

"Database Structure and Data Insertion"

Three primary tables were created:

Customer_details: Contains customer-related data including Customer_ID, Customer_Name, Email, City, and Country.

Product_details: Stores product information such as Product_ID, Product_Name, Unit, Price, and Category.

Order_details: Initially included Order_ID, Product_ID, Quantity, Order_Date, and Payment_Method. A new column, Customer_ID, was later added using an ALTER TABLE command to establish relationships with the Customer_details table.

Sample data was inserted into each table to mimic a small-scale business scenario involving customer purchases of various products. The inserted records reflect diversity in geography, product categories, and transaction details.

"Join Operations"

INNER JOIN:

This operation connected all three tables (Customer_details, Order_details, and Product_details) to extract specific fields like customer ID, name, order date, and the total order amount (calculated as quantity × price). The query was filtered to only include products with an ID less than 10.

### INNER JOIN OUTPUT

![Image](https://github.com/user-attachments/assets/61027acc-752e-41ee-95c0-ad61daca51de)

LEFT JOIN:

This operation used to retrieve all customers along with any matching orders and product details. It included fields such as product name, quantity, price, and total amount. The data was filtered for products priced above 100 and sorted in ascending order by quantity.

RIGHT JOIN:

Retrieved all products and their associated order and customer data (if available), including the customer's city. This query was filtered to show only orders with a quantity of 40 or less.

FULL OUTER JOIN Simulation:

Since MySQL doesn't support FULL OUTER JOIN directly, it was simulated using a combination of LEFT JOIN and RIGHT JOIN queries joined by a UNION statement. This provided a comprehensive view of all possible data combinations across the three tables.

"Tools and Technologies Used"

MySQL: Used to execute all database operations and SQL commands.

SQL: Utilized for table creation, data insertion, updates, and executing join queries for data analysis.

This task effectively demonstrates how relational data can be integrated and analyzed using SQL joins in a real-world context.

