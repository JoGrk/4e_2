-- 1 Napisz kod transakcji, która
START TRANSACTION;
SELECT id,imie,nazwisko
FROM nauczyciele;

SELECT id,nazwa 
FROM przedmioty;

INSERT INTO uczy(id,przedmiot,nauczyciel)
VALUES (
    100,
    (SELECT id FROM przedmioty WHERE nazwa='Informatyka'),
    (SELECT id FROM nauczyciele WHERE imie='Aleksandra' AND nazwisko='Nowak')
);

COMMIT;
-- A. wyświetli dane (id, imię i nazwisko) nauczycieli
-- B. Wypisze dane (id, nazwa) przedmiotów
-- C. Dopisz Aleksandrę Nowak jako nowego nauczyciela informatyki.
-- D. Wyświetli dane (imie, nazwisko) osób uczących informatyki.
-- C.  Zatwierdzi transakcję
-- 2. Napisz kod transakcji, która 
START TRANSACTION;
SELECT id,nazwa
FROM przedmioty;

UPDATE przedmioty
SET nazwa='Historia i społeczeństwo'
WHERE nazwa='Historia';

ROLLBACK;
-- A.Początek transakcji -  Wyświetli listę przedmiotów (id, nazwa)
-- B. Zmieni nazwę historii na Historia i społeczeństwo
-- C. Wyświetli listę przedmiotów (id, nazwa)
-- D. zakładamy, że jednak zmieniono zdanie, wycofaj się z transakcji
-- E. Wyświetl listę przedmiotów (jaką nazwę ma przedmiot o id 9? ____________, czy zmiana została zapisana w bazie? _______)
-- --------------------------------------------------------------------------------------------------------------

-- 3. Napisz kod transakcji, która
START TRANSACTION;
SELECT id,imie,nazwisko,klasa
FROM uczniowie;

UPDATE uczniowie
SET klasa="3a"
WHERE klasa='2a';

UPDATE uczniowie
SET klasa="2a"
WHERE klasa='1a';

COMMIT;

-- A. wyświetli listę uczniów (id, imie, nazwisko, klasa)
-- B. przesunie wszystkich uczniów klasy pierwszej do drugiej, a drugiej do trzeciej (dwa zapytania)
-- C. Wyświetl listę uczniów(id, imie, nazwisko, klasa)
-- D. zatwierdź transakcję 
-- E. Wyświetl listę uczniów(id, imie, nazwisko, klasa)
-- F. Czy zmiany zostały zapisane w bazie? __________