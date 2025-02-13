CREATE FUNCTION plotnost(
    @kontinent AS VARCHAR(50)
)
RETURNS FLOAT
AS
BEGIN
    DECLARE @a INT, @b INT
    SELECT @a = SUM(Население), @b = SUM(Площадь)
    FROM Страны
    GROUP BY
        Континент
    HAVING
        Континент = @kontinent
    RETURN CAST(@a AS FLOAT)/@b
END