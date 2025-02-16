DECLARE MyCursor CURSOR
FOR
SELECT
    Фамилия
    ,Предмет
FROM
    Ученики
ORDER BY
    Баллы   
OPEN MyCursor
FETCH MyCursor
CLOSE MyCursor
DEALLOCATE MyCursor