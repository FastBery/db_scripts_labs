CREATE FUNCTION replacement(
    @slovo AS VARCHAR(50)
)
RETURNS VARCHAR(50)
AS
BEGIN
    RETURN LEFT(@slovo,3) + 'тест' + RIGHT(@slovo, 1)
END