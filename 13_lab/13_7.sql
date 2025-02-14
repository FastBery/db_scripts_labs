CREATE PROC task_7
AS
BEGIN
SELECT *
INTO Страны_И
FROM Страны
WHERE LEFT(Название, 1) = 'И'
END