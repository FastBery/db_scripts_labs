ALTER FUNCTION IsPalindrom(
    @P INT
)
RETURNS INT
AS
BEGIN
    DECLARE @reverse INT = 0
    DECLARE @temp INT = @P
    WHILE @temp != 0
    BEGIN
        SET @reverse = @reverse*10 + @temp % 10
        SET @temp = @temp / 10
    END
    IF @reverse = @P 
        SET @temp = 1
    -- ELSE 
    --     SET @temp = 0
    RETURN @temp
END