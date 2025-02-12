SELECT Континент, SUM(Население)*1.1
FROM Страны
GROUP BY
    Континент