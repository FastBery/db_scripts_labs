SELECT 
    Название,
    Площадь
FROM
    Страны
WHERE
    Площадь < 500

UNION

SELECT 
    Название,
    Площадь
FROM
    Страны
WHERE
    Площадь > 5000000