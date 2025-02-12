SELECT Континент, AVG(LEN(Название))
FROM Страны
GROUP BY 
    Континент
HAVING
    Континент = 'Африка'