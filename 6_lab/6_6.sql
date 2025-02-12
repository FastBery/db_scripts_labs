SELECT DISTINCT
    С.Фамилия,
    Э.Аудитория
FROM
    Экзамен Э
    INNER JOIN Студент С ON С.Рег_номер = Э.Рег_номер
WHERE
    Э.Аудитория = 'т505'