CREATE PROC task_4
    @a INT,
    @b INT
AS
BEGIN
    SELECT *
    FROM Страны
    WHERE Население BETWEEN @a AND @b
END