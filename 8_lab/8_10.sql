SELECT Название
FROM Страны
WHERE Континент = (
    SELECT Континент
    FROM Страны
    WHERE Название = 'Фиджи'
)