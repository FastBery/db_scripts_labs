DECLARE @n INT = RAND()*1000
SELECT @n
WHILE @n % 3 = 0
    SET @n = @n / 3
IF @n = 1
    PRINT 'Yes'
ELSE
    PRINT 'No'