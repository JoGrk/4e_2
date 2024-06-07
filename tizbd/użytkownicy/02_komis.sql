-- 1. Dodaj użytkowników:

-- A. Kasia, odpowiadająca za wprowadzanie danych o klientach, hasło zaq1@WSX
CREATE USER 'Kasia' IDENTIFIED BY 'zaq1@WSX';
-- B. Jan - głównego mechanika wpisującego informacje o naprawach, hasło zaq1@WSX
CREATE USER 'Jan' IDENTIFIED BY 'zaq1@WSX';
-- C. Kasjer - odpowiedzialnych za wystawianie rachunków, ale nie mogących wprowadzać zmian do bazy, hasło zaq1@WSX
CREATE USER 'Kasjer' IDENTIFIED BY 'zaq1@WSX';



-- 2. Utwórz perspektywę KlienciKoszty (nazwa, adres, kwota, data_wpisu z tabeli rejestry pod nazwą data_rejestru) łączącą dane z tabel Klienci i Rejestry, która będzie potrzebna kasjerowi do pracy
CREATE VIEW KlienciKoszty AS
SELECT nazwa, adres, kwota, rejestry.data_wpisu AS data_rejestru FROM Klienci
    INNER JOIN Rejestry ON Klienci.id=rejestry.klient;
-- 3. Ustal minimalny zestaw uprawnień dla utworzonych użytkowników, kierując się zasadą "im mniejsze uprawnienia, tym mniej można zepsuć"
-- A. Kasia, wszystkie prawa do tabeli Klienci

GRANT ALL ON komis.Klienci TO 'Kasia';
-- B. Jan - prawa do modyfikacji, dodawania i usuwania  dla tabel operacje i rejestry oraz wyszukiwania dla wszystkich tabel w bazie

GRANT UPDATE,INSERT,DELETE ON komis.operacje TO 'Jan';

GRANT UPDATE,INSERT,DELETE ON komis.rejestry TO 'Jan';

GRANT SELECT ON komis.* TO 'Jan';

-- C. Kasjer - prawa do przeszukiwania perspektywy KlienciKoszty
GRANT SELECT ON 4e_2_komis.KlienciKoszty TO 'Kasjer';

-- 4. Utwórz nowego użytkownika uczendba z hasłem dostępu zaq1@WSX 
-- A. przypisz mu wszystkie uprawnienia do tabel Klienci i Handlowcy.
-- B. zabroń mu usuwania rekordów z tabeli Klienci 
-- C. odbierz uprawnienia wykonywania zapytań usuwania rekordów i modyfikowania wartości w tabeli Handlowcy

-- 5. Utwórz użytkowników jeden i dwa (bez hasła).
--  A. Nadaj uprawnienia wprowadzania, zmiany i usuwania danych w całej bazie komis dla użytkownika jeden
-- B. nadaj wszystkie uprawnienia do tabeli Auta użytkownikowi dwa
-- C. odbierz użytkownikowi jeden prawa usuwania danych 
-- D. odbierz wszystkie uprawnienia użytkownikowi dwa do tabeli Auta
-- 6. 
-- A. Zaloguj się jako użytkownik jeden i ustaw hasło 'zaq1@WSX'
-- B. Ustaw hasło dla użytkownika dwa na 'zaq1@WSX'
-- C. z poziomu konta root zmień hasło dla użytkownika jeden na 'haslo'