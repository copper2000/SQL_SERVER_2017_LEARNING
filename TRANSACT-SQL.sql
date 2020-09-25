-- VÍ D? D? VCC: TÍNH T?NG 2 S?
BEGIN 
	DECLARE @v_Result INT;
	DECLARE @v_a INT = 50;
	DECLARE @v_b INT = 100;

	PRINT 'v_a = ' + CAST(@v_a AS VARCHAR(15));

	PRINT 'v_b = ' + CAST(@v_b AS VARCHAR(15));

	SET @v_Result = @v_a + @v_b;
	PRINT 'v_a + v_b = ' + CAST(@v_Result AS VARCHAR(15));
END;

-- VÍ D? KHÓ H?N TÍ: IF (ELSE IF) ELSE

BEGIN
	DECLARE @Option INT;
	DECLARE @Action VARCHAR(30);
	
	SET @Option = 2;
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


DECLARE @x INT = 0;	
WHILE (@x < 10)
	BEGIN 
		SET @x += 1;					
		PRINT '@x = ' + CAST(@x AS VARCHAR(10));
	END;
