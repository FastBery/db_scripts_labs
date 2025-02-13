CREATE FUNCTION less_than_n
(
    @chislo INT
)
RETURNS TABLE
AS
RETURN (
    SELECT Название
    FROM Страны
    WHERE Площадь < @chislo
)