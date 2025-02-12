SELECT 
    Название
FROM 
    Страны
WHERE
    CAST(Население AS FLOAT)/Площадь > (
        SELECT CAST(SUM(Население) AS FLOAT) / SUM(Площадь)
        FROM Страны
    )