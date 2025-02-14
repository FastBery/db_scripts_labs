CREATE PROC AddRightDigit
    @k INT OUTPUT,
    @d INT
AS
BEGIN
    SET @k = @k*10 + @d
    RETURN @k
END