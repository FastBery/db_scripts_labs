-- EXECUTE task_1

-- EXECUTE task_2

-- EXECUTE task_3 'Европа'

-- EXECUTE task_4 1000000, 10000000

-- EXECUTE task_5 'а'

-- EXECUTE task_6 

-- EXECUTE task_7 

-- DECLARE @C AS INT
-- EXECUTE @C = task_8
-- SELECT @C AS [Количество строк в удаленной таблице]

-- DECLARE @a INT
-- EXECUTE task_9 1231, @a OUTPUT
-- SELECT @a

-- DECLARE @a INT = 123 
-- EXECUTE AddRightDigit @a OUTPUT, 5
-- SELECT @a

-- DECLARE @a INT = 123
-- EXECUTE InvDigit @a OUTPUT
-- SELECT @a

-- DECLARE @a INT = 123
-- DECLARE @b INT = 456
-- EXECUTE Swap @a OUTPUT, @b OUTPUT
-- SELECT @a, @b

-- DECLARE @a INT = 1
-- DECLARE @b INT = 2
-- DECLARE @c INT = 1
-- EXECUTE SortInc @a OUTPUT, @b OUTPUT, @c OUTPUT
-- SELECT @a, @b, @c

-- DECLARE @a INT = 123
-- DECLARE @b INT
-- DECLARE @c INT
-- EXECUTE DigitCountSum @a, @b OUTPUT, @c OUTPUT
-- SELECT @b, @c