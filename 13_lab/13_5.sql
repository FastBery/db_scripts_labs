CREATE PROC task_5
    @char VARCHAR(1)
AS
BEGIN
SELECT *
FROM Страны
WHERE CHARINDEX(@char, Название) = 0
END