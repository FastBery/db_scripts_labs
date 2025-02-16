CREATE TABLE ##table_15_7
(
    Континент VARCHAR(20),
    Макс INT,
    Мин INT
)

INSERT INTO 
    ##table_15_7
    SELECT
        Континент, MAX(Площадь), MIN(Площадь)
    FROM Страны
    GROUP BY
        Континент

SELECT * FROM ##table_15_7