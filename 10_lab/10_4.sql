UPDATE Ученики
SET
    Баллы = Баллы*1.1
WHERE
    Предмет = 'Химия' AND Баллы < 60

SELECT *
FROM Ученики