SELECT Название
FROM Страны А
WHERE Площадь > (
    SELECT AVG(Площадь)
    FROM Страны Б
    WHERE А.Континент = Б.Континент
)