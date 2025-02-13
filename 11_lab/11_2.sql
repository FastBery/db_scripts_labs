DECLARE @licey FLOAT, @gimn FLOAT

SELECT @licey = AVG(Баллы)
FROM Ученики
GROUP BY
    Школа
HAVING Школа = 'Лицей'

SELECT @gimn = AVG(Баллы)
FROM Ученики
GROUP BY
    Школа
HAVING Школа = 'Гимназия'

PRINT CAST(ABS(@licey - @gimn) AS VARCHAR)