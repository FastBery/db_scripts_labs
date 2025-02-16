DECLARE MyCursor CURSOR SCROLL
FOR
SELECT
Фамилия
,Предмет
FROM
Ученики
DECLARE @S VARCHAR(2000), @F VARCHAR(50), @W VARCHAR(50)
OPEN MyCursor
SET @S = 'Ученики'
FETCH NEXT FROM MyCursor INTO @F, @W
WHILE @@FETCH_STATUS = 0
BEGIN
SET @S = @S + ', ' + @F + ' по предмету "' + @W + '"'
FETCH NEXT FROM MyCursor INTO @F, @W
END
SET @S = @S + ' участвовали на олимпиаде.'
PRINT @S
CLOSE MyCursor
DEALLOCATE MyCursor