CREATE FUNCTION naselenie_between
(
    @chislo1 INT,
    @chislo2 INT
)
RETURNS TABLE
AS
RETURN (
    SELECT Название
    FROM Страны
    WHERE Население BETWEEN @chislo1 AND @chislo2 OR Население BETWEEN @chislo2 AND @chislo1
)