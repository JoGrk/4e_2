-- Firma remontowa potrzebuje bazy danych do obsługi klientów.  Wymagania:

-- 1. Tabela Klienci. 

-- A. ID całkowite, autoinkrementacja, klucz podstawowy
-- B. Imie - tekst do 30 znaków, pole nie może być puste
-- C. Nazwisko - tekst do 50 znaków, pole nie może być puste
-- D. e-mail - tekst do 50 znaków, wartości w polu nie mogą się powtarzać, w środku musi wystąpić znak @

CREATE table Klienci
(ID int AUTO_INCREMENT Primary KEY,
 Imie varchar(30) NOT NULL,
 Nazwisko varchar(50) NOT NULL,
 email varchar(50) UNIQUE check(email like '%@%')
 );

-- 2. Tabela Uslugi

-- A. ID całkowite, autoinkrementacja, klucz podstawowy
-- B. nazwa - tekst do 50 znaków, 
-- C. opis - teksty do 512 znaków
-- D. cena - stałoprzecinkowy typ: ceny do 7 znaków przed przecinkiem i 2 znaków po przecinku, 
CREATE TABLE Uslugi(
    ID int AUTO_INCREMENT PRIMARY KEY,
    nazwa varchar(50),
    opis varchar(512),
    cena DECIMAL(9,2)
    
);

-- 3. Do tabeli Usługi dodaj więzy integralności: 

-- A. do pola nazwa: wartości w polu nie mogą się powtarzać, pole nie może być puste
-- B. do pola cena: wpisywane wartości muszą być większe od 10
ALTER TABLE Uslugi
MODIFY nazwa varchar(50) NOT NULL UNIQUE;

ALTER TABLE Uslugi
ADD constraint ch_cena check(cena>10);


-- 4. Połącz obie tabele:

-- A. określ typ związku i sposób przejścia do postaci relacyjnej
-- B. dodaj potrzebne pole i/lub tabele, pokaż projekt na zrzucie
CREATE TABLE Klucze(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_Klienci INT,
    ID_Uslugi INT
);
ALTER TABLE Klucze
    ADD CONSTRAINT fk_klienci FOREIGN KEY(ID_Klienci) REFERENCES Klienci(ID);
-- C. dodaj więzy integralności referencyjnej
ALTER TABLE Klucze
ADD CONSTRAINT fk_uslugi FOREIGN KEY(ID_Uslugi) REFERENCES Uslugi(ID);


-- 5. Wprowadź dane dwóch klientów i dwie usługi

INSERT INTO Klienci(imie,nazwisko,email )
VALUES
    ('Wojtek','PANDA','panda.woj@gmail.com'),
    ('Tomek','BUY','pandaBuy@gmail.com');

-- 6. Upewnij się, że działają więzy integralności (nie puste, wartości się nie powtarzają, check)

-- A. w tabeli Klienci

-- B. w tabeli Uslugi

-- 7. Zamów i wyprowadź do bazy danych wykonanie usług: 

-- A. pierwszy klient zamawia pierwszą usługę, przy wprowadzaniu danych posługuj się nazwami usług

-- B. Drugi klient zamawia obie usługi, przy wprowadzaniu danych posługuj się nazwami usług

-- 8. Upewnij się, że działają więzy integralności referencyjnej

-- A. usuń dane pierwszego klienta z tabeli klienci,
--  B. z tabeli klienci usuń dane pierwszego klienta stosując podejście wyważone
-- C. z tabeli klienci usuń dane drugiego klienta stosując podejście kaskadowe usuwanie powiązanych pól