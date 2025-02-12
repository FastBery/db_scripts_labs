SELECT Континент, COUNT(Название)
FROM Страны 
WHERE Население > 100000000
GROUP BY
    Континент
ORDER BY 
    COUNT(Название) ASC