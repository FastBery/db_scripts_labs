CREATE FUNCTION func(
    @name AS VARCHAR(50)
)
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @res AS VARCHAR(50)
    SELECT @res = Название
    FROM Страны
    WHERE Столица = @name
    RETURN @res
END