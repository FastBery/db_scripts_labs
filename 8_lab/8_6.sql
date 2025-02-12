SELECT Название
FROM Страны А
WHERE Континент IN (
    SELECT
        Континент
    FROM 
        Страны
    GROUP BY
        Континент
    HAVING
        SUM(Население)/SUM(Площадь) > (
            SELECT SUM(Население)/SUM(Площадь)
            FROM Страны
            
        )
)