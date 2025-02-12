SELECT
    Название,
    ROUND(CAST(Площадь AS FLOAT)/(
        SELECT SUM(Площадь)
        FROM Страны
    )*100, 0)
FROM Страны
