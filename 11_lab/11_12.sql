DECLARE @L INT, @M INT, @N CHAR(13)
SET @N = 'Нижневартовск'
SET @L = LEN(@N)
SET @M = @L

SET @L = 1
WHILE @L <= @M
BEGIN
PRINT SPACE((@M - @L)) + RIGHT(REVERSE(@N), @L) + SUBSTRING(@N, 2 , @L - 1)  + SPACE((@M - @L))
SET @L = @L + 1
END