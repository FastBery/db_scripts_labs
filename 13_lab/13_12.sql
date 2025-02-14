ALTER PROC Swap
    @x INT OUTPUT,
    @y INT OUTPUT
AS
BEGIN
    DECLARE @temp INT
    SET @temp = @x
    SET @x = @y
    SET @y = @temp
END