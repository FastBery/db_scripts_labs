SELECT Название,
    ROUND(CAST(Площадь AS FLOAT)/(
        SELECT SUM(Площадь)
        FROM Страны Б
        WHERE А.Континент = Б.Континент
    ), 2)
FROM Страны А