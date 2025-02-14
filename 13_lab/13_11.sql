CREATE PROC InvDigit
    @k INT OUTPUT
AS
BEGIN
    DECLARE @temp INT = 0
    WHILE @k > 0
    BEGIN
        SET @temp = @temp*10 + @k % 10
        SET @k = @k / 10
    END
    SET @k = @temp
    RETURN @k
END