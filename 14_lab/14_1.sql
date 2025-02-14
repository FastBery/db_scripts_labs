CREATE TRIGGER trigger_14_1 ON Ученики
FOR UPDATE
AS
BEGIN
PRINT 'Запись изменена'
END