SELECT COUNT(Название) AS kolvo
FROM Страны
GROUP BY
    LEN(Название)
ORDER BY
    kolvo DESC

SELECT *, LEN(Название) AS dlina
FROM Страны
ORDER BY 
    dlina