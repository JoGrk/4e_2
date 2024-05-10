-- 1.  Utwórz tabelę Dane z jednym polem typu int o nazwie numer . 

CREATE TABLE Dane (
    numer int
);

-- 2. Zapisz w tabeli liczbę 10.

INSERT INTO dane 
VALUES (1);
-- 3.  rozpocznij transakcję  
start transaction;

-- 4. Zmień liczbę na 20
UPDATE dane
SET numer = 20;

-- 5. Wycofaj się z transakcji. 

ROLLBACK;

-- 6. jaka jest zawartość tabeli Dane?
Select * from Dane;

-- 7. rozpocznij transakcję
Start transaction;

-- 8. zmień liczbę na 30

Update dane
Set numer = 30;
-- 9. zatwierdź transakcję

Commit;

-- 10. Jaka jest zawartość tabeli Dane?

SELECT * FROM Dane;

-- -----------------------------

-- 11 Utwórz tabelę Dane z dwoma polami typu int: numer i kwota. Wpisz dwa wiersze: (1, 10) oraz (2, 20).

CREATE TABLE Dane_2 (
    numer int,
    kwota int
);

INSERT INTO Dane_2 
VALUES (1,10), (2,20);


-- 12. Otwórz dwa wiersze okna poleceń Rozpocznij w obu transakcje.
START TRANSACTION;

-- 13. Pokaż zawartość tabeli dane;
SELECT * FROM Dane_2;
-- 14. W pierwszej zmodyfikuj kwotę w wierszu o numerze 1, w drugiej kwotę w wierszu o numerze 2 (udało się? ____ )
UPDATE Dane_2
SET kwota = 1000
    WHERE numer = 1;
UPDATE Dane_2
SET kwota = 200
    WHERE numer = 2;
-- 15. Zatwierdź transakcję w tym oknie, w którym jest to możliwe. Co się stało w drugim oknie? 

-- 16. Jaka jest zawartość tabeli Dane?

-- 17. Zatwierdź drugą transakcję. Jaka jest zawartość tabeli Dane?