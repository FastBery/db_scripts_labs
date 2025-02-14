CREATE PROC DigitCountSum
    @x INT,
    @c INT OUTPUT,
    @s INT OUTPUT
AS
BEGIN
    SET @c = 0
    SET @s = 0
    WHILE @x > 0
    BEGIN
        SET @s = @s + @x % 10
        SET @x = @x / 10
        SET @c = @c + 1
    END
    RETURN @c
END