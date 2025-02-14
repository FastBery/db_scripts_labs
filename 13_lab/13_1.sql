CREATE PROC task_1
AS
BEGIN
SELECT
    @@Servername AS Сервер
    ,@@Version AS [Версия СУБД]
    ,Db_Name() AS [База данных]
    ,User AS [Пользователь базы данных]
    ,System_User AS [Системный пользователь]
    ,GETDATE() AS [Время]
END