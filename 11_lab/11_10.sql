DECLARE @x INT = 2
WHILE NOT(@x % 2 = 1 AND @x % 3 = 1 AND @x % 4 = 1 AND @x % 5 = 1 AND @x % 6 = 1 AND @x % 7 = 0)
SET @x = @x + 1
PRINT @x