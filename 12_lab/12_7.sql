ALTER FUNCTION bukva
(
    @simvol VARCHAR(1)
)
RETURNS INT
AS
BEGIN
    DECLARE @n INT
    SELECT @n = COUNT(Название)
    FROM Страны
    WHERE NOT Название LIKE ('%' + @simvol + '%') --CHARINDEX(@simvol, Название) > 0
    RETURN @n
END