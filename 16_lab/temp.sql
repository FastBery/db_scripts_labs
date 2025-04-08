--Замеряем скорость: Insert: внести в таблицу 1 000, 10 000, 100 000 записей. Измерить время выполнения. Аналогично - Update.
SET NOCOUNT ON
-- CREATE TABLE Сотрудник123 (
--     id INT IDENTITY(1,1) PRIMARY KEY,      -- Уникальный идентификатор (автоинкремент)
--     full_name VARCHAR(100) NOT NULL        -- Полное имя (строка)
-- );

-- Замер времени для вставки 1 000 записей
DECLARE @i INT = 1, @start_time DATETIME = SYSDATETIME();
WHILE (@i <= 10000)
BEGIN
    INSERT INTO Сотрудник123 (full_name)
    VALUES ('строка ' + CAST(@i AS VARCHAR));
    SET @i = @i + 1;
END
PRINT 'Время вставки 1 000 записей: ' + CAST(DATEDIFF(ms, @start_time, SYSDATETIME()) AS VARCHAR) + ' мс';

-- Замер времени для вставки 10 000 записей
SET @i = 1;
SET @start_time = SYSDATETIME();
WHILE (@i <= 1000000)
BEGIN
    INSERT INTO Сотрудник123 (full_name)
    VALUES ('строка ' + CAST(@i AS VARCHAR));
    IF (@i % 100000) = 0
    BEGIN 
        COMMIT TRANSACTION
        BEGIN TRANSACTION
    END;
    SET @i = @i + 1;
END
PRINT 'Время вставки 10 000 записей: ' + CAST(DATEDIFF(ms, @start_time, SYSDATETIME()) AS VARCHAR) + ' мс';

-- Замер времени для вставки 100 000 записей
SET @i = 1;
SET @start_time = SYSDATETIME();
WHILE (@i <= 1000000)
BEGIN
    INSERT INTO Сотрудник123 (full_name)
    VALUES ('строка ' + CAST(@i AS VARCHAR));
    IF (@i % 100000) = 0
    BEGIN 
        COMMIT TRANSACTION
        BEGIN TRANSACTION
    END;

    SET @i = @i + 1;
END
PRINT 'Время вставки 100 000 записей: ' + CAST(DATEDIFF(ms, @start_time, SYSDATETIME()) AS VARCHAR) + ' мс';