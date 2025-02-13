DECLARE @a INT = RAND()*100, @b INT = RAND()*100, @c INT = RAND()*100
SELECT @a, @b, @c
IF @a > @b
    IF @b > @c
        PRINT @c
    ELSE
        PRINT @b
ELSE
    IF @a > @c
        PRINT @c
    ELSE
        PRINT @a