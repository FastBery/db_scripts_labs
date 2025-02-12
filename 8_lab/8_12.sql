SELECT Название
FROM Страны
WHERE Население = (
    SELECT MAX(мин_пл)
    FROM (
        SELECT MIN(Площадь) AS мин_пл
        FROM Страны
        GROUP BY Континент
    ) А
)