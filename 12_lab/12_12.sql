CREATE FUNCTION Quarter(
    @x INT,
    @y INT
)
RETURNS INT
AS
BEGIN
    DECLARE @n INT
    IF @x > 0
        IF @y > 0
            SET @n = 1
        ELSE
            SET @n = 4
    ELSE
        IF @y > 0
            SET @n = 2
        ELSE
            SET @n = 3
    RETURN @n
END