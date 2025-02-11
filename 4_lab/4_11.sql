SELECT ФИО, Дата_рождения,
CASE
    WHEN YEAR(Дата_рождения)%4 = 0 AND NOT(YEAR(Дата_рождения)%1000 = 0) THEN 'YES' ELSE 'NO' END
FROM Академики