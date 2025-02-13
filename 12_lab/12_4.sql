CREATE FUNCTION thrd_max()
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @P AS VARCHAR(50)
    DECLARE @M1 AS FLOAT
    DECLARE @M2 AS FLOAT
    DECLARE @M3 AS FLOAT
    SELECT
        @M1 = MAX(Площадь)
    FROM
        Страны

    SELECT
        @M2 = MAX(Площадь)  
    FROM
        Страны
    WHERE
        Площадь < @M1

    SELECT
        @M3 = MAX(Площадь)
    FROM
        Страны
    WHERE
        Площадь < @M2

    SELECT
        @P = Название
    FROM
        Страны
    WHERE
        Площадь = @M3
    
    RETURN @P
END