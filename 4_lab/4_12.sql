SELECT DISTINCT Специализация,
CASE
    WHEN LEN(Специализация) < 8 THEN "Короткий" ELSE "Длинный" END
FROM Академики