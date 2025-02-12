SELECT
    С.Фамилия,
    COUNT(Э.Код)
FROM
    Сотрудник С
        INNER JOIN Экзамен Э ON Э.Таб_номер = С.Таб_номер
GROUP BY
    С.Фамилия
HAVING
    COUNT(Э.Код) > 3