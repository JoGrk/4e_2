-- 0. Wyświetl istniejące bazy danych, utwórz bazę Wycieczki2
SHOW DATABASES ;
CREATE DATABASE Wycieczki2;
-- 1. W nowej bazie danych Wycieczki utwórz tabelę Przewodnicy o następujących polach



-- przewodnik - pole jednoznacznie identyfikuje wiersz, liczby powinny pojawiać się automatycznie 
-- Telefon domowy - w polu przechowywane są teksty o długości do 15 znaków
-- nazwisko - tekst o długości do 50 znaków, pole jest wymagane
-- imię - tekst o długości do 30 znaków
 
 USE Wycieczki2;

CREATE TABLE Przewodnicy(
    przewodnik int AUTO_INCREMENT PRIMARY KEY,
    telefon varchar(15),
    nazwisko varchar(50) NOT NULL,
    imie varchar(25)
)
;

 

-- 2. Utwórz tabelę  Wycieczki o następujących polach:

-- kod wycieczki - teksty o długości 4 znaków, pole identyfikuje jednoznacznie daną wycieczkę
-- przewodnik - pole w którym wpisujemy numer przewodnika 
-- cena - podaj jako domyślną cenę 1000zł
-- data rozpoczęcia - pole przechowuje daty,
-- data zakończenia - pole przechowuje daty
-- przewodnik jest kluczem obcym odwołującym się do tabeli przewodnicy
CREATE TABLE Wycieczki
(
 kod char(4) PRIMARY KEY,
 przewodnik int,
 cena dec(6,2) DEFAULT 1000,
 data_rozpoczecia date,
 data_zakonczenia date,
 FOREIGN KEY(przewodnik) REFERENCES przewodnicy(przewodnik)
)
;


-- 3. Wyświetl istniejace tabele
SHOW TABLES
-- 4. Wyświetl opis obu tabel
DESC przewodnicy
DESC wycieczki
-- 5. Wpisz przykładowe dane (co najmniej dwie wycieczki i dwóch przewodników) - użyj różnych wersji instrukcji
insert into wycieczki
values
('1234',1,2137,'1939-09-01','1945-05-08');


insert into przewodnicy
(imie,nazwisko) 
values
('Blazej','Wojtas');

-- 6. Wyświetl dane z obu tabel

-- 7. Usuń po jednym wierszu z każdej z tabel (dobierz warunek)
DELETE FROM przewodnicy
WHERE przewodnik=1;