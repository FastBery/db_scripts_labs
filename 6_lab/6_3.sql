SELECT
    С.Фамилия,
CASE
    WHEN С.Фамилия = П.Фамилия THEN ""
    ELSE
    П.Фамилия
    END
    , П.Таб_номер
FROM
    Сотрудник С
        INNER JOIN Сотрудник П ON С.Шеф = П.Таб_номер   
