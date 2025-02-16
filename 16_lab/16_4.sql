DECLARE MyCursor CURSOR SCROLL
FOR
    SELECT Баллы
    FROM Ученики
    ORDER BY Баллы 

DECLARE @Sum INT
DECLARE @temp INT
OPEN MyCursor

FETCH FROM MyCursor INTO @Sum
FETCH ABSOLUTE -1 FROM MyCursor INTO @temp

SET @Sum = @Sum + @temp

CLOSE MyCursor
DEALLOCATE MyCursor

SELECT @Sum