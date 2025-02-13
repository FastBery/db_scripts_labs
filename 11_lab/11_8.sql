DECLARE @a INT = RAND() * 1000, @b INT = RAND() * 1000
DECLARE @a2 INT = @a, @b2 INT = @b
PRINT '@a = ' + CAST(@a AS VARCHAR(4))
PRINT '@b = ' + CAST(@b AS VARCHAR(4))
WHILE @a != @b
BEGIN
IF @a > @b
SET @a = @a - @b
ELSE
SET @b = @b - @a
END
PRINT 'НОД = ' + CAST(@a AS VARCHAR(4))
PRINT @a2*@b2/@a