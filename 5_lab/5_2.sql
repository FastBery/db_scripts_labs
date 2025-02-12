SELECT TOP 1 Название, MAX(Население) AS maximum
FROM Страны
GROUP BY
    Название
ORDER BY 
    maximum DESC

