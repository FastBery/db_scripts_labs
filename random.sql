-- Создаем хранимую процедуру для генерации таблицы NxN со случайными числами
CREATE OR ALTER PROCEDURE GenerateRandomMatrix
    @Size INT,          -- Размер таблицы (N)
    @MinValue INT = 0,  -- Минимальное значение случайного числа
    @MaxValue INT = 100 -- Максимальное значение случайного числа
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Проверка входных параметров
    IF @Size < 1
    BEGIN
        RAISERROR('Размер таблицы должен быть положительным числом', 16, 1);
        RETURN;
    END
    
    IF @MinValue > @MaxValue
    BEGIN
        RAISERROR('Минимальное значение не может быть больше максимального', 16, 1);
        RETURN;
    END
    
    -- Создаем временную таблицу для хранения результата
    DECLARE @SQL NVARCHAR(MAX);
    
    -- Начинаем формировать динамический SQL
    SET @SQL = N'CREATE TABLE RandomMatrix (RowID INT';
    
    -- Добавляем столбцы
    DECLARE @i INT = 1;
    WHILE @i <= @Size
    BEGIN
        SET @SQL = @SQL + N', Col' + CAST(@i AS NVARCHAR(10)) + N' INT';
        SET @i = @i + 1;
    END
    SET @SQL = @SQL + N');';
    
    -- Выполняем создание таблицы
    EXEC sp_executesql @SQL;
    
    -- Заполняем таблицу данными
    SET @i = 1;
    WHILE @i <= @Size
    BEGIN
        SET @SQL = N'INSERT INTO RandomMatrix (RowID';
        
        -- Добавляем имена столбцов
        DECLARE @j INT = 1;
        WHILE @j <= @Size
        BEGIN
            SET @SQL = @SQL + N', Col' + CAST(@j AS NVARCHAR(10));
            SET @j = @j + 1;
        END
        
        SET @SQL = @SQL + N') VALUES (' + CAST(@i AS NVARCHAR(10));
        
        -- Добавляем случайные значения
        SET @j = 1;
        WHILE @j <= @Size
        BEGIN
            SET @SQL = @SQL + N', ' + 
                     CAST(FLOOR(RAND(CHECKSUM(NEWID())) * (@MaxValue - @MinValue + 1)) + @MinValue AS NVARCHAR(10));
            SET @j = @j + 1;
        END
        
        SET @SQL = @SQL + N');';
        
        EXEC sp_executesql @SQL;
        SET @i = @i + 1;
    END
    
    -- Выводим результат
    SELECT * FROM RandomMatrix;
    
    -- Удаляем временную таблицу (это произойдет автоматически при завершении сессии)
    -- DROP TABLE RandomMatrix;
END
GO
-- EXEC 
-- Пример вызова процедуры для создания таблицы 5x5 со случайными числами от 1 до 100
EXEC GenerateRandomMatrix @Size = 10, @MinValue = 1, @MaxValue = 100;
