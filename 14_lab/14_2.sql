CREATE TRIGGER trigger_14_2 ON Ученики
FOR INSERT, DELETE
AS
BEGIN
PRINT 'Количесвтво строк изменено'
END