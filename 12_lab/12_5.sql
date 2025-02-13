-- DROP FUNCTION max_nas

ALTER FUNCTION max_nas(
    @kontinent AS VARCHAR(50)
)
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @max INT
    SELECT @max = MAX(Население)
    FROM Страны
    WHERE Континент = @kontinent

    DECLARE @name VARCHAR(50)
    SELECT @name = Название
    FROM Страны
    WHERE Население = @max
    IF @name = NULL
        SET @name = 'Азия'
    RETURN @name
END