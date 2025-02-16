DECLARE @table_15_5 TABLE
(
    Название VARCHAR(20)
)
INSERT INTO @table_15_5
SELECT Название
FROM Страны А
WHERE (SELECT AVG(Площадь)
                FROM Страны Б
                GROUP BY Континент
                HAVING А.Континент = Б.Континент)/Площадь >= 100

SELECT *
FROM @table_15_5