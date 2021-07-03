--CREATE TABLE "Products"(
--"ProductID" INT NOT NULL IDENTITY(1,1) PRIMARY KEY
--)


--CREATE TABLE "Accesories"(
--"SerialNumber" INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--"Category" VARCHAR(50) NOT NULL,
--"ProductID" INT NOT NULL FOREIGN KEY REFERENCES Products(ProductID),
--"Brand" NVARCHAR(50) NOT NULL,
--"Name" NVARCHAR(50) NOT NULL,
--"Price" MONEY NOT NULL,
--"Description" TEXT NOT NULL
--)

--CREATE TABLE "Phones"(
--"SerialNumber" INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--"ProductID" INT NOT NULL FOREIGN KEY REFERENCES Products(ProductID),
--"Category" VARCHAR(50) NOT NULL,
--"Brand" NVARCHAR(50) NOT NULL,
--"Name" NVARCHAR(50) NOT NULL,
--"Price" MONEY NOT NULL,
--"Description" TEXT NOT NULL
--)

--CREATE TABLE "Package"(
--"PackageID" INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--"PartOfPackageID" INT NOT NULL FOREIGN KEY REFERENCES Package(PackageID),
--"Category" VARCHAR(50) NOT NULL,
--"ProductID" INT NOT NULL FOREIGN KEY REFERENCES Products(ProductID),
--"Brand" NVARCHAR(50) NOT NULL,
--"PackageName" NVARCHAR(50) NOT NULL,
--"Price" MONEY NOT NULL,
--"Description" TEXT NOT NULL
--)

--CREATE TABLE "PackageProducts"(
--"PackageOfProductsID" INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--"PackageID" INT NOT NULL FOREIGN KEY REFERENCES Package(PackageID),
--"ProductID" INT NOT NULL FOREIGN KEY REFERENCES Products(ProductID)
--)


--CREATE TABLE "Addresses"(
--"AddressID" INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--"CountryID" INT NOT NULL FOREIGN KEY REFERENCES Country(CountryID),
--"City" NVARCHAR(50) NOT NULL,
--"Code" VARCHAR(9) NOT NULL,
--"StreetNumber" NVARCHAR(200) NOT NULL
--)

--CREATE TABLE "Country"(
--"CountryID" INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--"CountryName" VARCHAR(80) NOT NULL
--)


--CREATE TABLE "Customer"(
--"CustomerID" INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--"FirstName" NVARCHAR(50) NOT NULL,
--"LastName" NVARCHAR(50) NOT NULL,
--"AddressID" INT NOT NULL FOREIGN KEY REFERENCES Addresses(AddressID),
--"Phone" VARCHAR(20) NOT NULL,
--"Email" NVARCHAR(320) NULL
--)

--CREATE TABLE "Vendor"(
--"VendorID" INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--"VendorName" NVARCHAR(50) NOT NULL
--)

--CREATE TABLE "Delivery"(
--"DeliveryID" INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--"VendorID" INT NOT NULL FOREIGN KEY REFERENCES Vendor(VendorID),
--"Type" VARCHAR(20) NOT NULL,
--"Cost" MONEY NOT NULL,
--)

--CREATE TABLE "Employee"(
--"EmployeeID" INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--"FirstName" NVARCHAR(50) NOT NULL,
--"LastName" NVARCHAR(50) NOT NULL
--)

--CREATE TABLE "HasManager"(
--"EmployeeID" INT NOT NULL IDENTITY(1,1) PRIMARY KEY FOREIGN KEY REFERENCES Employee(EmployeeID),
--"ManagerID" INT FOREIGN KEY REFERENCES Employee(EmployeeID)
--)

--CREATE TABLE "Orders"(
--"InvoiceNumber" INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--"DeliveryID" INT NOT NULL FOREIGN KEY REFERENCES Delivery(DeliveryID),
--"FullCost" MONEY NOT NULL
--)

--CREATE TABLE "Purchase"(
--"PurchaseID" INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--"ProductID" INT NOT NULL FOREIGN KEY REFERENCES Products(ProductID),
--"InvoiceNumber" INT NOT NULL FOREIGN KEY REFERENCES Orders(InvoiceNumber),
--"Quantity" INT NOT NULL,
--"Price" MONEY NOT NULL,
--"Discount" DECIMAL(5,2),
--"Date" DATE NOT NULL,
--"OrderClosure" VARCHAR(100) NOT NULL,
--"ConnectedEmployeeID" INT NOT NULL FOREIGN KEY REFERENCES Employee(EmployeeID),
--"CustomerID" INT NOT NULL FOREIGN KEY REFERENCES Customer(CustomerID),
--"DeliveryStatus" VARCHAR(40) NOT NULL
--)

-- part 2
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
--INSERT INTO Products DEFAULT VALUES
----SELECT *FROM Products

--INSERT INTO Phones(ProductID,Category,Brand,Name,Price,Description)
--VALUES(1,'Touch','Apple','iPhone17',6567,'Impressive. Very nice. Now lets see Paul Allens card.')
--INSERT INTO Phones(ProductID,Category,Brand,Name,Price,Description)
--VALUES(2,'Touch','Zenphone','33',7654,'Quite good')
--INSERT INTO Phones(ProductID,Category,Brand,Name,Price,Description)
--VALUES(3,'Touch','Nokia','G33',111,'Hard nokia')
--INSERT INTO Phones(ProductID,Category,Brand,Name,Price,Description)
--VALUES(4,'Touch','Samsung','S32',2555,'Touchy samsung')
--INSERT INTO Phones(ProductID,Category,Brand,Name,Price,Description)
--VALUES(5,'Flap','Zenphoe','i4',999,'Flap phone')
----SELECT *FROM Phones


--INSERT INTO Country(CountryName)
--VALUES('Poland')
--INSERT INTO Country(CountryName)
--VALUES('USA')
--INSERT INTO Country(CountryName)
--VALUES('China')
--INSERT INTO Country(CountryName)
--VALUES('France')
--INSERT INTO Country(CountryName)
--VALUES('Spain')
----SELECT *FROM Country

--INSERT INTO Accesories(ProductID,Category,Brand,Name,Price,Description)
--VALUES(6,'Phonecase1','Case','i818',81,'good case')
--INSERT INTO Accesories(ProductID,Category,Brand,Name,Price,Description)
--VALUES(7,'Phonecase2','Case','iPhoneCase',88,'better case')
--INSERT INTO Accesories(ProductID,Category,Brand,Name,Price,Description)
--VALUES(8,'Headphone','Ear','gfd45',111,'nice sound')
--INSERT INTO Accesories(ProductID,Category,Brand,Name,Price,Description)
--VALUES(9,'Screencleaner1','Cleanersss','c545',20,'hellllo')
--INSERT INTO Accesories(ProductID,Category,Brand,Name,Price,Description)
--VALUES(10,'Cleaner','Cleanersss','c5489',10,'helllo2')
----SELECT *FROM Accesories

--INSERT INTO Addresses(CountryID,City,Code,StreetNumber)
--VALUES(1,'Warsaw','00-662','Koszykowa 75')
--INSERT INTO Addresses(CountryID,City,Code,StreetNumber)
--VALUES(2,'Wilno','22-444','Rakigi 4')
--INSERT INTO Addresses(CountryID,City,Code,StreetNumber)
--VALUES(3,'Wladywostok','12-444','Kimi 5')
--INSERT INTO Addresses(CountryID,City,Code,StreetNumber)
--VALUES(4,'Helskinki','00-654','Hellloo street 5')
--INSERT INTO Addresses(CountryID,City,Code,StreetNumber)
--VALUES(5,'Oslo','0-545','Elm street idk')
----SELECT *FROM Addresses


--INSERT INTO Employee(FirstName,LastName)
--VALUES('John','Howe')
--INSERT INTO Employee(FirstName,LastName)
--VALUES('Szymon','Grenn')
--INSERT INTO Employee(FirstName,LastName)
--VALUES('Markus','Rashford')
--INSERT INTO Employee(FirstName,LastName)
--VALUES('Bruno','Fernandes')
--INSERT INTO Employee(FirstName,LastName)
--VALUES('Big','Lebovsky')
----SELECT *FROM Employee

--INSERT INTO HasManager(ManagerID)
--VALUES(2)
--INSERT INTO HasManager(ManagerID)
--VALUES(3)
--INSERT INTO HasManager(ManagerID)
--VALUES(4)
--INSERT INTO HasManager(ManagerID)
--VALUES(5)
--INSERT INTO HasManager(ManagerID)
--VALUES(NULL)

----SELECT *FROM HasManager


--INSERT INTO Customer(FirstName,LastName,AddressID,Phone,Email)
--VALUES('Jakub','Suduk',5,'+489656536','htshs@gmail.com')
--INSERT INTO Customer(FirstName,LastName,AddressID,Phone,Email)
--VALUES('Jakub','Man',4,'+489653635','hstrhts@gmail.com')
--INSERT INTO Customer(FirstName,LastName,AddressID,Phone,Email)
--VALUES('Gert','Akumov',3,'+489635635653','j.htsrhts@gmail.com')
--INSERT INTO Customer(FirstName,LastName,AddressID,Phone,Email)
--VALUES('Szisz','Protakl',2,'+483653653653','jhrtdshrt@gmail.com')
--INSERT INTO Customer(FirstName,LastName,AddressID,Phone,Email)
--VALUES('EloooImiee','Helik',1,'+4896356635','hgfdxh@gmail.com')
----SELECT *FROM Customer

--INSERT INTO Vendor(VendorName)
--VALUES('Poczta Polska')
--INSERT INTO Vendor(VendorName)
--VALUES('HTML')
--INSERT INTO Vendor(VendorName)
--VALUES('Evergreen')
--INSERT INTO Vendor(VendorName)
--VALUES('POCZTA POLSKA')
--INSERT INTO Vendor(VendorName)
--VALUES('PHP')
----SELECT *FROM Vendor

--INSERT INTO Delivery(VendorID,Type,Cost)
--VALUES(1,'PLANE',500)
--INSERT INTO Delivery(VendorID,Type,Cost)
--VALUES(5,'TRAIN',564)
--INSERT INTO Delivery(VendorID,Type,Cost)
--VALUES(2,'BIKE',99)
--INSERT INTO Delivery(VendorID,Type,Cost)
--VALUES(2,'PLANE',635)
--INSERT INTO Delivery(VendorID,Type,Cost)
--VALUES(3,'PLANE',324)
--INSERT INTO Delivery(VendorID,Type,Cost)
--VALUES(4,'PLANE',133)
--INSERT INTO Delivery(VendorID,Type,Cost)
--VALUES(5,'BIKE',543)
--INSERT INTO Delivery(VendorID,Type,Cost)
--VALUES(5,'SHIP',231)
--INSERT INTO Delivery(VendorID,Type,Cost)
--VALUES(5,'SHIP',654)
--INSERT INTO Delivery(VendorID,Type,Cost)
--VALUES(2,'SHIP',764)
----SELECT *FROM Delivery

--INSERT INTO Package(ProductID,PartOfPackageID,Category,Brand,PackageName,Price,Description)
--VALUES(11,1,'Heros','Samsung','Name1',65466,'Vice loco ergo ac ullo bile ab.')
--INSERT INTO Package(ProductID,PartOfPackageID,Category,Brand,PackageName,Price,Description)
--VALUES(12,1,'Religion','Samsung','Name2',65365,'Vice loco ergo ac ullo bile ab.')
--INSERT INTO Package(ProductID,PartOfPackageID,Category,Brand,PackageName,Price,Description)
--VALUES(13,1,'Advices','Apple','Name3',11111,'Vice loco ergo ac ullo bile ab.')
--INSERT INTO Package(ProductID,PartOfPackageID,Category,Brand,PackageName,Price,Description)
--VALUES(14,4,'Books','Brandion','Name4',22222,'Vice loco ergo ac ullo bile ab.')
--INSERT INTO Package(ProductID,PartOfPackageID,Category,Brand,PackageName,Price,Description)
--VALUES(15,5,'HelloCategory','Brandion','Name5',33333,'Vice loco ergo ac ullo bile ab.')
----SELECT *FROM Package

--INSERT INTO PackageProducts(PackageID,ProductID)
--VALUES(2,2)
--INSERT INTO PackageProducts(PackageID,ProductID)
--VALUES(2,4)
--INSERT INTO PackageProducts(PackageID,ProductID)
--VALUES(3,5)
--INSERT INTO PackageProducts(PackageID,ProductID)
--VALUES(3,6)
--INSERT INTO PackageProducts(PackageID,ProductID)
--VALUES(4,7)
--INSERT INTO PackageProducts(PackageID,ProductID)
--VALUES(4,7)
--INSERT INTO PackageProducts(PackageID,ProductID)
--VALUES(5,8)
--INSERT INTO PackageProducts(PackageID,ProductID)
--VALUES(5,9)
--INSERT INTO PackageProducts(PackageID,ProductID)
--VALUES(5,10)
--INSERT INTO PackageProducts(PackageID,ProductID)
--VALUES(5,2)
----SELECT *FROM PackageProducts

--INSERT INTO Orders(DeliveryID,FullCost)
--VALUES(2,543)
--INSERT INTO Orders(DeliveryID,FullCost)
--VALUES(3,54354)
--INSERT INTO Orders(DeliveryID,FullCost)
--VALUES(1,545)
--INSERT INTO Orders(DeliveryID,FullCost)
--VALUES(5,63563)
--INSERT INTO Orders(DeliveryID,FullCost)
--VALUES(4,54325)
--INSERT INTO Orders(DeliveryID,FullCost)
--VALUES(7,545)
--INSERT INTO Orders(DeliveryID,FullCost)
--VALUES(6,2545)
--INSERT INTO Orders(DeliveryID,FullCost)
--VALUES(9,6536)
--INSERT INTO Orders(DeliveryID,FullCost)
--VALUES(8,11111)
--INSERT INTO Orders(DeliveryID,FullCost)
--VALUES(10,59211)
----SELECT *FROM Orders

--INSERT INTO Purchase(ProductID,InvoiceNumber,Quantity,Price,
--Discount,Date,OrderClosure,ConnectedEmployeeID,CustomerID,DeliveryStatus)
--VALUES(2,1,7,7055,0,'2012-12-28','CLOSED',3,5,'DELIVERED')
--INSERT INTO Purchase(ProductID,InvoiceNumber,Quantity,Price,
--Discount,Date,OrderClosure,ConnectedEmployeeID,CustomerID,DeliveryStatus)
--VALUES(13,1,4,5454,0,'2018-1-28','CLOSED',3,4,'DELIVERED')
--INSERT INTO Purchase(ProductID,InvoiceNumber,Quantity,Price,
--Discount,Date,OrderClosure,ConnectedEmployeeID,CustomerID,DeliveryStatus)
--VALUES(11,2,5,3233,33.3,'2019-08-30','CLOSED',4,3,'DELIVERED')
--INSERT INTO Purchase(ProductID,InvoiceNumber,Quantity,Price,
--Discount,Date,OrderClosure,ConnectedEmployeeID,CustomerID,DeliveryStatus)
--VALUES(4,3,5,5454,11,'2009-06-28','CLOSED',4,3,'DELIVERED')
--INSERT INTO Purchase(ProductID,InvoiceNumber,Quantity,Price,
--Discount,Date,OrderClosure,ConnectedEmployeeID,CustomerID,DeliveryStatus)
--VALUES(5,4,1,545,11.11,'2008-06-22','CLOSED',1,3,'DELIVERED')
--INSERT INTO Purchase(ProductID,InvoiceNumber,Quantity,Price,
--Discount,Date,OrderClosure,ConnectedEmployeeID,CustomerID,DeliveryStatus)
--VALUES(6,5,5,6567,90,'2020-05-22','CLOSED',1,3,'DELIVERED')
--INSERT INTO Purchase(ProductID,InvoiceNumber,Quantity,Price,
--Discount,Date,OrderClosure,ConnectedEmployeeID,CustomerID,DeliveryStatus)
--VALUES(7,6,5,767676,99.9,'2020-05-22','CLOSED',2,3,'DELIVERED')
--INSERT INTO Purchase(ProductID,InvoiceNumber,Quantity,Price,
--Discount,Date,OrderClosure,ConnectedEmployeeID,CustomerID,DeliveryStatus)
--VALUES(9,7,6,5454,33.3,'2020-05-22','CLOSED',2,3,'DELIVERED')
--INSERT INTO Purchase(ProductID,InvoiceNumber,Quantity,Price,
--Discount,Date,OrderClosure,ConnectedEmployeeID,CustomerID,DeliveryStatus)
--VALUES(8,8,8,434,50,'2021-05-05','CLOSED',5,2,'DELIVERED')
--INSERT INTO Purchase(ProductID,InvoiceNumber,Quantity,Price,
--Discount,Date,OrderClosure,ConnectedEmployeeID,CustomerID,DeliveryStatus)
--VALUES(1,9,2,545,45.5,'2021-05-04','OPEN',5,2,'NOT DELIVERED')
--INSERT INTO Purchase(ProductID,InvoiceNumber,Quantity,Price,
--Discount,Date,OrderClosure,ConnectedEmployeeID,CustomerID,DeliveryStatus)
--VALUES(12,9,2,6565,22.2,'2021-03-04','OPEN',5,2,'NOT DELIVERED')
--INSERT INTO Purchase(ProductID,InvoiceNumber,Quantity,Price,
--Discount,Date,OrderClosure,ConnectedEmployeeID,CustomerID,DeliveryStatus)
--VALUES(14,9,2,656532,20,'2021-03-01','OPEN',2,1,'LOST')
--INSERT INTO Purchase(ProductID,InvoiceNumber,Quantity,Price,
--Discount,Date,OrderClosure,ConnectedEmployeeID,CustomerID,DeliveryStatus)
--VALUES(15,10,2,545,33.3,'2021-03-01','OPEN',2,1,'LOST')
--SELECT *FROM Purchase

--Modificating
--SELECT *FROM Customers
--UPDATE Addresses
--SET City='ChangedCity'
--WHERE AddressID=1
----SELECT *FROM Customers

----SELECT *FROM Customers
--UPDATE Addresses
--SET Code='12-122'
--WHERE AddressID=2
----SELECT *FROM Customers

----SELECT *FROM Customers
--UPDATE Addresses
--SET StreetNumber='ChangedStreet 12'
--WHERE AddressID=3
--SELECT *FROM Addresses

--Part 3 creating index
--CREATE INDEX IX_Purchase_Product_ID
--ON Purchase(ProductID);

--CREATE INDEX IX_PRODUCTS_PRODUCTS
--ON Products(ProductID)

--Part 4 - Queries

--SELECT DATEPART(MONTH,curr.mm) as Month,
--curr.FullCost, number
--FROM 
--  ( SELECT
--    DATEPART(mm,Purchase.Date) as mm,
--	orders.FullCost,
--    ROW_NUMBER() OVER (PARTITION BY DATEPART(mm,purchase.Date) ORDER BY orders.FullCost DESC ) AS number
--    FROM Purchase purchase
--	LEFT JOIN Orders orders ON purchase.InvoiceNumber=orders.InvoiceNumber
--  )curr
--WHERE number <= 7
--ORDER BY mm, number;

--2
--SELECT
--employee.EmployeeID,
--employee.FirstName,
--employee.LastName,
--COUNT(Phones.Category) AS Phones,
--COUNT(Accesories.Category) AS Accesories,
--COUNT(Package.Category) AS Package
--FROM Purchase purchase
--LEFT JOIN Employee employee ON purchase.ConnectedEmployeeID=employee.EmployeeID
--LEFT JOIN Products products ON purchase.ProductID=products.ProductID
--LEFT JOIN Phones phones ON products.ProductID=phones.ProductID
--LEFT JOIN Accesories accesories ON products.ProductID=accesories.ProductID
--LEFT JOIN Package package ON products.ProductID=package.ProductID
--group by employee.EmployeeID,employee.FirstName,employee.LastName

--3
--SELECT
--customer.CustomerID,
--customer.FirstName,
--customer.LastName,
--orders.InvoiceNumber,
--orders.FullCost,
--COUNT(purchase.ProductID) AS Quantity
--FROM Purchase purchase
--LEFT JOIN Customer customer ON purchase.CustomerID=customer.CustomerID
--LEFT JOIN Orders orders ON purchase.InvoiceNumber=orders.InvoiceNumber
--LEFT JOIN Products products ON purchase.ProductID=products.ProductID
--LEFT JOIN Phones phones ON products.ProductID=phones.ProductID
--LEFT JOIN Accesories accesories ON products.ProductID=accesories.ProductID
--LEFT JOIN Package package ON products.ProductID=package.ProductID
--group by customer.CustomerID,customer.FirstName,customer.LastName,orders.InvoiceNumber,orders.FullCost
--HAVING COUNT(purchase.ProductID)>1

--4

--SELECT customer.CustomerID,
--customer.FirstName,
--customer.LastName,
--COUNT(DISTINCT orders.InvoiceNumber)
--from Customer customer
--LEFT JOIN Purchase purchase ON customer.CustomerID=purchase.CustomerID
--LEFT JOIN Orders orders ON purchase.InvoiceNumber=orders.InvoiceNumber
--group by customer.CustomerID,customer.FirstName,customer.LastName
--having count(*) > 1.5  *
--(
--select avg(curr.Count) from
--(select customer.CustomerID,
--	COUNT(DISTINCT orders.InvoiceNumber) as 'Count' 
--	from Customer customer 
--	LEFT JOIN Purchase purchase ON customer.CustomerID=purchase.CustomerID
--	LEFT JOIN Orders orders ON purchase.InvoiceNumber=orders.InvoiceNumber
--	group by customer.CustomerID
--) curr)

--5
--SELECT
--orders.InvoiceNumber,
--COUNT(purchase.ProductID) AS NumberCancelled
--FROM Purchase purchase
--LEFT JOIN Orders orders ON  purchase.InvoiceNumber=orders.InvoiceNumber
--LEFT JOIN Products products ON purchase.ProductID=products.ProductID
--LEFT JOIN Phones phones ON products.ProductID=phones.ProductID
--LEFT JOIN Accesories accesories ON products.ProductID=accesories.ProductID
--LEFT JOIN Purchase purchase1 ON products.ProductID=purchase1.ProductID
--WHERE purchase.DeliveryStatus='LOST' OR purchase.DeliveryStatus='NOT DELIVERED'
--group by orders.InvoiceNumber
