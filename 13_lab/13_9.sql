CREATE PROC task_9
    @x INT,
    @n INT OUTPUT 
AS
BEGIN
    SET @n = 0
    WHILE @x > 0
    BEGIN
        SET @x = @x / 10
        SET @n = @n + 1
    END
    RETURN @n
END