-- TRIGGER
-- DEFINE: Trigger = "functions" which are called after execute INSERT, UPDATE, DELETE, ...

-- Call trigger after UPDATE product

--CREATE TRIGGER TRG_UPDATE_PRODUCT ON Products 
--AFTER UPDATE AS 
--DECLARE @Price AS FLOAT 
--SET @Price = (SELECT TOP 1 Price FROM Products WHERE Price < 0)
--IF @Price < 0
--	BEGIN 
--		RAISERROR ('Cannot update negative Price', 16, 10) -- 16 is security level: 11-20 if errors | 10 is error state (0 -> 255)
--		ROLLBACK
--	END


-- Add 'counts' field to Categories
SELECT * FROM Categories
UPDATE Categories
SET counts = 0
WHERE counts IS NULL

-- Call trigger after INSERT product

--CREATE TRIGGER TRG_INSERT_PRODUCT 
--ON Products AFTER INSERT AS 
--DECLARE @CategoryID AS INT
--BEGIN
--	SET @CategoryID = (SELECT CategoryID FROM inserted) -- inserted is the keyword: inserted product

--	UPDATE Categories
--	SET counts += 1
--	WHERE CategoryID = @CategoryID;
--END

INSERT INTO Products(ProductName, SupplierID, CategoryID, Unit, Price)
VALUES ('lobsters, crabs, shrimps, prawns', 2, 2, 'kilogram', 2000)

-- Call trigger after DELETE PRODUCT

--CREATE TRIGGER TRG_DELETE_PRODUCT ON Products
--AFTER DELETE AS
--DECLARE @CategoryID AS INT
--BEGIN
--	SET @CategoryID = (SELECT CategoryID from deleted)

--	UPDATE Categories
--	SET counts = counts  - 1
--	WHERE CategoryID = @CategoryID AND counts > 0
--END

drop trigger DL_PRODUCT

DELETE FROM Products WHERE ProductID = 17

INSERT INTO Products(ProductName,SupplierID,CategoryID,Unit,Price) VALUES('Apple iPhone 11 Pro Max', 2 , 5, 'one', 2000);
INSERT INTO Products(ProductName,SupplierID,CategoryID,Unit,Price) VALUES('Xiaomi Mi 19', 2 , 5, 'one', 199);
INSERT INTO Products(ProductName,SupplierID,CategoryID,Unit,Price) VALUES('Xiaomi Mi 13', 2 , 5, 'one', 222);
INSERT INTO Products(ProductName,SupplierID,CategoryID,Unit,Price) VALUES('Xiaomi Mi 14', 2 , 5, 'one', 333);