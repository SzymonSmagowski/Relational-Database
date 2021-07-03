# Rational-Database
An example of a task about creating a rational database. It was made in Microsoft SQL Server Management Studio. Initially created for the purpose of database course on the university. In the sql file everything is commented, so it does not see that I have any code in TSQL.
# Description of a task
1. The online store with mobile devices sells various types of smartphones and accessories.

2. Each product is described by name, category, brand, number (unique within product type), price and arbitrarily long description.

3. The store collects all necessary data about customers for invoice purposes: first name, last name, home address, telephone number and email address (if available).

4. Each purchase is registered including a list of products with quantity, price and discount, the date of purchase and orderfinalization. The information is assigned to unique customer identifier and employee responsible for the ordermanagement. 

5. In addition, for each producta status of delivery is defined (some products might be cancelled).

6. The order delivery can be handled by various vendors and different delivery methods but for a single order a specific vendor and delivery method need to be defined (including additional delivery cost).

7. Each order has a total cost and dedicated invoice number specified.

8. Each employee in the company may have a manager, who may have a manager, etc. Only the CEO of the company has no superior.
# SQL scripts for:
1. Creation of tables design earlier.
2. Inserting a sample rows into each table.
3. Modification of a selected table.
# Designing indexes
Both of the indexes are not clustered, since there is already a primary key inside those tables. The indexes are not really useful, because I do not use any of them in later part. Indexes should not be used on the table where we insert or modify rows a lot. 
# SQL Queries preparation
1. A list of 7 most expensive orders for each month.

2. Total number of orders for each product category supervised by a specific employee (to be selected based on available data).

3. Total cost of orders by a customer whereat least 2 different products were ordered.

4. A list of customers who ordered more than 150% of average number of orders per customer (the results should include total number of orders for each selected customers).

5. Maximum number of different products thatwere cancelled from a single order.
