-- Procedure = function withou "return value"
--CREATE PROCEDURE searchProducts
--	@NameContain nvarchar(200)
--AS
--	BEGIN
--		SELECT * 
--		FROM Products
--		WHERE ProductName LIKE '%' + @NameContain + '%'
--	END
--GO

EXEC searchProducts 'samsung'

--CREATE PROCEDURE filterProducts
--	@CategoryID INT
--AS
--	BEGIN
--		SELECT * 
--		FROM Products
--		WHERE CategoryID = @CategoryID
--	END
--GO

EXECUTE filterProducts 2

CREATE PROCEDURE OnePlusOne
	@a INT,
	@b INT
AS 
	BEGIN 
		DECLARE @v_Result INT;		

		PRINT 'v_a = ' + CAST(@a AS VARCHAR(15));

		PRINT 'v_b = ' + CAST(@b AS VARCHAR(15));

		SET @v_Result = @a + @b;
		PRINT 'v_a + v_b = ' + CAST(@v_Result AS VARCHAR(15));
	END
GO

OnePlusone 1564, 7891

CREATE PROCEDURE BranchingStatement
	@Option INT	
AS
	BEGIN 		
		DECLARE @Action VARCHAR(30);			
		IF @Option = 1
			SET @Action = 'Run'
		ELSE IF @Option = 2
			BEGIN
				PRINT 'In block else if @Option = 2';
				SET @Action = 'Backup';
			END;
		ELSE IF @Option = 3
			SET @Action = 'Stop';
		ELSE 
			SET @Action = 'Invalid';

		PRINT '@Action = ' + @Action;
	END

BranchingStatement 1

CREATE PROCEDURE PRINTX
	@x INT,
	@n INT
AS
	BEGIN
		WHILE(@x < @n)
			BEGIN
				SET @x += 1;
				PRINT 'x = ' + CAST(@x AS VARCHAR(20))
			END;
	END;
GO

PRINTX 0, 100