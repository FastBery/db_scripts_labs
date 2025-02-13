DECLARE @n INT = (SELECT COUNT(*)
FROM Ученики)
IF @n % 2 = 0
    PRINT 'Чётно'
ELSE
    PRINT 'Нечётно'