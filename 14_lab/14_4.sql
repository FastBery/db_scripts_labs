CREATE TRIGGER trigger_14_4 ON Ученики
INSTEAD OF UPDATE
AS
BEGIN
PRINT "Нельзя редактировать данные"
END