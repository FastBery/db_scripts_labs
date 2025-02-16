DECLARE MyCursor CURSOR SCROLL
FOR
SELECT Фамилия
,Предмет
,Школа
,Баллы
FROM
    Ученики
ORDER BY Баллы DESC
DECLARE @F VARCHAR(50)
DECLARE @P VARCHAR(50)
DECLARE @S VARCHAR(50)
DECLARE @B FLOAT
DECLARE @OB FLOAT = (SELECT TOP 1 Баллы FROM Ученики ORDER BY Баллы DESC)

OPEN MyCursor
FETCH NEXT FROM MyCursor INTO @F, @P, @S, @B
WHILE @@FETCH_STATUS = 0
BEGIN
    SELECT
    @F AS Фамилия
    ,@P AS Предмет
    ,@S AS Школа
    ,@B AS Баллы
    ,ABS(CAST(@B / @OB AS FLOAT)*100) AS [Отношение в процентах]
    SET @OB = @B
    FETCH NEXT FROM MyCursor INTO @F, @P, @S, @B
END
CLOSE MyCursor
DEALLOCATE MyCursor