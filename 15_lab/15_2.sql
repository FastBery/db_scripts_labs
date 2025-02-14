CREATE VIEW view_15_2
(
    Континент,
    Площадь, 
    Население
)
AS
SELECT
    Континент,
    AVG(Площадь),
    AVG(Население)
FROM
    Страны
GROUP BY
    Континент
