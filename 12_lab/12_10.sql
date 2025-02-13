CREATE FUNCTION kontinent_i_naselenie()
RETURNS TABLE
AS
RETURN (
    SELECT Континент, SUM(Население) AS summa
    FROM Страны
    GROUP BY
        Континент
)