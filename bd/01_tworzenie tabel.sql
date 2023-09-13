-- 1. Utwórz bazę danych Studenci i przejdź do niej.
 CREATE DATABASE Studenci;
 USE Studenci
-- 2. Utwórz tabelę studenci. Tabela powinna zawierać następujące kolumny:
-- id_studenta - identyfikator studenta , 4 znaki, stała szerokość, klucz główny,
-- nazwisko - nazwisko studenta, 25 znaków, wartość wymagana (NOT NULL),
-- imie - imię studenta, 25 znaków,
-- imie_ojca - imię ojca, 25 znaków,
 CREATE TABLE studenci 
 (
    id_studenta char(4) PRIMARY KEY,
    nazwisko varchar(25) NOT NULL,
    imie varchar(25),
    imie_ojca varchar(25) 
 )
 ;
-- 3. Utwórz tabelę oceny. Tabela powinna zawierać następujące kolumny:
-- id_studenta - identyfikator studenta, który otrzymał ocenę, 4 znaki,
-- nazwa przedmiotu - 25 znaków,
-- ocena - liczba, domyślnie 3
-- dzien - data wystawienia oceny,
-- identyfikator studenta i nazwa przedmiotu tworzą klucz główny tabeli.
CREATE TABLE oceny
(
    id_studenta char(4),
    nazwa_przedmiotu varchar(25),
    ocena int DEFAULT 3,
    dzien date,
    PRIMARY KEY (id_studenta,nazwa_przedmiotu)
);

-- 4. Utwórz tabelę Osoby
   
-- id_osoby całkowite większe niż zwykle,
-- nazwisko do 23 znaków 
-- data_ur data
-- czas_maratonu czas
-- rok_rozp rok, domyślnie 2020
-- zarobki maksymalnie pięciocyfrowe, liczone do groszy, wartości nie mogą się powtarzać
 CREATE TABLE Osoby
 (
    id_osoby bigint PRIMARY KEY,
    nazwisko varchar (23),
    data_ur date,
    czas_maratonu time,
    rok_rozp year DEFAULT 2020,
    zarobki dec(7,2) unique
);


-- 5. Pracownicy

-- id_prac całkowite, autoinkrementacja, 
--  Nazwisko teksty do 25 znaków, nie mogą się powtarzać 
-- zarobki maksymalnie czterocyfrowe, z groszami, domyslnie 1900 

CREATE TABLE Pracownicy(
    id_prac int PRIMARY KEY auto_increment,
    nazwisko varchar(25) unique,
    zarobki dec(6,2) DEFAULT 1900

);
