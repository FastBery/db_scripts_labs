CREATE PROC task_6
    @kontinent VARCHAR(50) = 'Африка'
AS
BEGIN
SELECT TOP 5 *
FROM Страны
WHERE Континент = @kontinent
ORDER BY Население DESC
END