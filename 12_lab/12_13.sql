ALTER FUNCTION IsPrime
(
    @N INT
)
RETURNS INT
AS
BEGIN
    DECLARE @temp INT = 2
    DECLARE @res INT = 1
    WHILE @temp < @N
    BEGIN
        IF @N % @temp = 0
            BEGIN
                SET @res = 0
                BREAK
            END
        ELSE
            SET @temp = @temp + 1
    END
    RETURN @res
END
