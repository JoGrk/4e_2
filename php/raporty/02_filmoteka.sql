
-- a) Zwrócenie tytułów filmów, dla których gatunek to SF,
SELECT Tytul FROM filmy WHERE Gatunek='SF';

-- b) Zwrócenie wszystkich tytułów filmów wraz z nazwiskami reżyserów,
SELECT Tytul, Nazwisko 
FROM Filmy 
    INNER JOIN Rezyserzy ON Filmy.RezyserID=Rezyserzy.IDRezyser;
-- c) Zwrócenie filmów, dla których ocena w recenzji jest równa 4, 
SELECT Filmy.*
FROM recenzje
    INNER JOIN Filmy ON recenzje.IDRecenzja=Filmy.recenzjaID
WHERE Ocena=4;
-- d) Dodanie rekordu do tabeli rezyserzy z danymi: ID – 4, Andrzej Wajda
INSERT INTO rezyserzy (idrezyser, imie, nazwisko) VALUES (4, 'Andrzej', 'Wajda');