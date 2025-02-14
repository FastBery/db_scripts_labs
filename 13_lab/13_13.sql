ALTER PROC SortInc
    @a FLOAT OUTPUT,
    @b FLOAT OUTPUT,
    @c FLOAT OUTPUT
AS
BEGIN
    DECLARE @temp FLOAT
    IF @a <=  @b AND @b <=  @c
        RETURN
    IF @a <=  @c AND @c <=  @b
        EXECUTE Swap @b OUTPUT, @c OUTPUT
    IF @b <= @a AND @a <= @c
        EXECUTE Swap @a OUTPUT, @b OUTPUT
    IF @b <= @c AND @c <= @a
    BEGIN
        EXECUTE Swap @a OUTPUT, @b OUTPUT
        EXECUTE Swap @b OUTPUT, @c OUTPUT
    END
    IF @c <= @b AND @b <= @a
        EXECUTE Swap @a OUTPUT, @c OUTPUT
    IF @c <= @a AND @a <= @b
    BEGIN
        EXECUTE Swap @a OUTPUT, @c OUTPUT
        EXECUTE Swap @b OUTPUT, @c OUTPUT
    END
END
                
