WITH average AS
(
    SELECT
        Ф.Название,
        AVG(С.Зарплата) AS avaga

    FROM 
        Сотрудник С
        INNER JOIN Кафедра К ON С.Шифр = К.Шифр
        INNER JOIN Факультет Ф ON К.Факультет = LOWER(Ф.Аббревиатура)
    GROUP BY
        Ф.Название
)

SELECT 
    С.Фамилия,
    Ф.Название,
    С.Зарплата
FROM 
        Сотрудник С
        INNER JOIN Кафедра К ON С.Шифр = К.Шифр
        INNER JOIN Факультет Ф ON К.Факультет = LOWER(Ф.Аббревиатура)
        INNER JOIN average a ON a.Название = Ф.Название
WHERE
    С.Зарплата < avaga