SELECT Название
FROM Страны
WHERE Континент = 'Африка' AND EXISTS (
    SELECT *
    FROM Страны
    WHERE Площадь > 2000000
)