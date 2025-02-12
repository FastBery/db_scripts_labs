SELECT Континент
FROM Страны
WHERE Площадь > 1000000
GROUP BY
    Континент
HAVING
    AVG(CAST(Население AS FLOAT)/Площадь) > 30 