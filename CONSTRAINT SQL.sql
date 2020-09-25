USE sqltutorials;

SELECT COUNT(cus.CustomerID), cus.Country
FROM Customers AS cus
GROUP BY cus.Country
HAVING cus.Country IS NOT NULL

SELECT * ,
CASE
	WHEN p.Price > 100.0 THEN 'Price: greater than 100'
	WHEN p.Price > 15 THEN 'Price: greater than 15'
	ELSE 'Price: under 15'
END AS TextPrice	
FROM Products p;

INSERT INTO Shippers(ShipperName, Phone, Description) VALUES('Grab', '(123)-456-789', 'Install Grab in App Store and call');
INSERT INTO Shippers(ShipperName, Phone, Description) VALUES('Speedy Express', '(503) 555-9831', 'Deliver very fast');
INSERT INTO Shippers(ShipperName, Phone, Description) VALUES('Federal Shipping', '(500) 555-9931', 'Deliver with low cost');

select * from Sys.Tables

SELECT * FROM Products 
WHERE ProductID = 3

INSERT INTO Products(ProductName,SupplierID,CategoryID,Unit,Price) VALUES('Macbook pro 15.4 inches 2017', 2,6,'boxes', 2200);

ALTER TABLE Products
ADD 
CONSTRAINT CHECK_PRODUCT
CHECK (Products.Price >= 0 AND Products.Price <= 2000)

INSERT INTO Products(ProductName,SupplierID,CategoryID,Unit,Price) VALUES('Apple iPhone 11 Pro Max', 2 , 5, 'one', 2000);

ALTER TABLE Products
ADD CONSTRAINT UN_PRODUCT
UNIQUE (ProductName)
 
INSERT INTO Products(ProductName,SupplierID,CategoryID,Unit,Price) VALUES('Apple iPhone 11 Pro Max', 2 , 5, 'one', 2000);

INSERT INTO Employees(FullName, DateOfBirth, Notes) VALUES('Margaret Fuller','1994-10-25', 'He is in sales department');

ALTER TABLE Orders
ADD CONSTRAINT DF_ORDER_DATE
DEFAULT GETDATE() FOR OrderDate

INSERT INTO Employees(FullName, DateOfBirth, Notes) VALUES('Simone August', NULL, 'She is in offshore department');
SELECT * FROM Orders

INSERT INTO Orders(CustomerID, EmployeeID, ShipperID) VALUES(2, 1, 3);

ALTER TABLE Employees
ADD CONSTRAINT DE_EMPLOYEES_DOB
DEFAULT GETDATE() FOR DateOfBirth

UPDATE Employees SET DateOfBirth = '1993-06-03', FullName = 'Alba August' WHERE EmployeeID = 4

DELETE FROM Employees WHERE EmployeeID = 3

INSERT INTO Employees(FullName, Notes) VALUES('Simone August', 'She is in offshore department');

SELECT * FROM Orders


