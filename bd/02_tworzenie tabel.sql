-- nowa baza danych, użyj jej
CREATE DATABASE 4e_2
USE 4e_2
-- 1, Dzialy:
-- - kod (pięć znaków, klucz podstawowy)
-- - nazwa, nie może się powtarzać
-- - budzet - sześciocyfrowy, domyslnie 100 000
CREATE TABLE dzialy( 
    kod char(5) PRIMARY KEY,
    nazwa varchar(255) unique,
    budzet dec(8,2) DEFAULT 100000

);
-- 2. Pracownicy:
-- - ID - autoinkrementacja
--  - imie nie puste
--  - nazwisko nie puste
--  - dzial, kod działu - klucz obcy
CREATE TABLE robole(
    id int auto_increment PRIMARY KEY,
    imie varchar(255) NOT NULL,
    nazwisko varchar(255) NOT NULL,
    dzial char(5), 
    FOREIGN KEY(dzial) REFERENCES dzialy(kod)
)
;