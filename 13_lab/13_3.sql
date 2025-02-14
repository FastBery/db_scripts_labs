CREATE PROC task_3
    @kontinent AS VARCHAR(50)
AS
BEGIN
SELECT *
FROM Страны
WHERE Континент != @kontinent
END