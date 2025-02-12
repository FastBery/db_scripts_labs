SELECT Название
FROM Страны
WHERE Население < (
    SELECT Население
    FROM Страны
    WHERE Название = 'Фиджи'
)