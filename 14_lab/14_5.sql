
CREATE TRIGGER trigger_14_5 ON Ученики
FOR DELETE
AS
BEGIN
    INSERT
        Ученики_Игнатьев
    SELECT
        Фамилия,
        GETDATE() AS Дата
    FROM
        DELETED
END