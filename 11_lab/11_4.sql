DECLARE @x INT = RAND()*(9999-1000) + 1000
DECLARE @s INT = 0
PRINT @x
WHILE @x != 0
BEGIN
    SET @s = @s + @x % 10
    SET @x = @x / 10
END
PRINT @s