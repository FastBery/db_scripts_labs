SELECT 
    С.Фамилия
FROM
    Экзамен Э
        INNER JOIN Студент С ON Э.Рег_номер = С.Рег_номер
GROUP BY
    С.Фамилия
HAVING
    COUNT(Э.Код) > 1