SELECT Континент, MAX(Площадь)/MIN(Площадь)
FROM Страны
GROUP BY
    Континент
HAVING (MAX(Площадь)/MIN(Площадь)) < 1000