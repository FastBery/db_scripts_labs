CREATE PROC task_8
AS
BEGIN
    DECLARE @k INT

    SELECT @k = COUNT(*)
    FROM Страны_И
    DROP TABLE Страны_И
    RETURN @k
END
