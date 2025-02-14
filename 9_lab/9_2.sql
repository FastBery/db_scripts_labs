CREATE TABLE Страны_Игнатьев
(
    ID INT PRIMARY KEY IDENTITY,
    Название VARCHAR(20) NOT NULL CHECK(LEN(Название) > 3)
)