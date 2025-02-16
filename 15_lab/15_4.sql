DECLARE @table_15_4 TABLE
(
    [Номер месяца] INT,
    [Название месяца] VARCHAR(20),
    [Количество дней] INT
)

DECLARE @n INT = 1
DECLARE @month VARCHAR(20)
DECLARE @days INT

WHILE @n < 13
BEGIN
    IF @n = 1
    BEGIN
        SET @month = 'Январь'
        SET @days = 31
    END

    IF @n = 2
    BEGIN
        SET @month = 'Февраль'
        SET @days = 28
    END

    IF @n = 3
    BEGIN
        SET @month = 'Март'
        SET @days = 31
    END

    IF @n = 4
    BEGIN
        SET @month = 'Апрель'
        SET @days = 30
    END

    IF @n = 5
    BEGIN
        SET @month = 'Май'
        SET @days = 31
    END

    IF @n = 6
    BEGIN
        SET @month = 'Июнь'
        SET @days = 30
    END

    IF @n = 7
    BEGIN
        SET @month = 'Июль'
        SET @days = 31
    END

    IF @n = 8
    BEGIN
        SET @month = 'Август'
        SET @days = 31
    END

    IF @n = 9
    BEGIN
        SET @month = 'Сентябрь'
        SET @days = 30
    END

    IF @n = 10
    BEGIN
        SET @month = 'Октябрь'
        SET @days = 31
    END

    IF @n = 11
    BEGIN
        SET @month = 'Ноябрь'
        SET @days = 30
    END

    IF @n = 12
    BEGIN
        SET @month = 'Декабрь'
        SET @days = 31
    END
    INSERT @table_15_4
    VALUES (@n, @month, @days)
    SET @n = @n + 1
END

SELECT *
FROM @table_15_4