SELECT
    DATEPART(wk, Дата) AS [Номер недели],
    COUNT(DISTINCT Код) AS [Количество экзаменов],
    COUNT(DISTINCT Рег_номер) AS [Количетсво студентов]
INTO
    #table_15_6
FROM Экзамен
GROUP BY
    DATEPART(wk, Дата)

SELECT * FROM #table_15_6