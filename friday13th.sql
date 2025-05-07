CREATE TABLE #FRIDAY_13 (День INT, Дата DATE)
DECLARE @date DATE
SET @date = '2025-04-30';

WHILE @date <='2425-04-30'
    BEGIN
        IF DAY(@date) = 13
    BEGIN
      INSERT INTO #FRIDAY_13 VALUES(DATEPART(WEEKDAY, @date), @date)
    END;
      
    SET @date = DATEADD(day, 1, @date)
    END;

SELECT [День], COUNT(День) as 'Количество'
FROM [#FRIDAY_13]
GROUP BY [День]
ORDER BY [Количество] DESC

DROP TABLE #FRIDAY_13

sqlcmd -S 85.142.157.73,8628 -U saaa -P 35352020 -d FM_12_23_IGNATEV -C -i ./temp.sql 