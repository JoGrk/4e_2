-- ODDZIAŁY
-- NrRozlicz (klucz)
-- Miejscowosc
-- Nr
-- Region

-- PRACOWNICY
-- Nr (klucz)
-- Nazwisko
-- Imie
-- NrRozliczOddz

-- PRODUKTY
-- Nazwa (klucz)
-- Punktacja

-- SPRZEDAŻ
-- NrPracownika
-- NazwaProduktu
-- Ilosc

 

-- WYRÓŻNIENI
-- NrPracownika (klucz)

-- Złączenia
-- 1.Imię i nazwisko pracownika oraz region, w którym pracuje.
-- dane wybierz z tabel: Pracownicy oraz Oddziały, pola łączące to NrRozliczOddz z tabeli Pracownicy oraz NrRozlicz z tabeli Oddziały
SELECT Imie, Nazwisko, Region
FROM oddzialy 
    INNER JOIN pracownicy ON oddzialy.NrRozlicz=Pracownicy.NrRozliczOddz

-- 2.Imię i nazwisko pracownika, nazwa i ilość sprzedanych produktów.
-- potrzebne tabele to Pracownicy i Sprzedaż (pole łączące to NrPracownika i Nr)
SELECT Imie, Nazwisko, NazwaProduktu, Ilosc
FROM Pracownicy
    INNER JOIN Sprzedaz ON Pracownicy.Nr=Sprzedaz.NrPracownika;



-- 3.Imię i nazwisko pracownika, nazwa i punktacja produktu oraz ilość sprzedanych produktów.
-- potrzebne tabele to Pracownicy i Sprzedaż (pole łączące to NrPracownika i Nr)
-- do tego dodaj tabelę Produkty (pole łączące to NazwaProduktu i Nazwa)


SELECT 
    Pracownicy.Imie,
    Pracownicy.Nazwisko,
    Sprzedaz.NazwaProduktu,
    Produkty.Punktacja,
    Sprzedaz.Ilosc    
FROM
    Pracownicy
    INNER JOIN Sprzedaz ON Pracownicy.Nr=Sprzedaz.NrPracownika
    INNER JOIN Produkty ON Produkty.Nazwa=Sprzedaz.NazwaProduktu


-- 4.Imię i nazwisko pracownika, nazwa i suma punktów ze sprzedaży produktu.
-- sumę punktów odnajdziesz, gdy pomnożysz Ilosc i Punktacje
-- potrzebne tabele to Pracownicy i Sprzedaż (pole łączące to NrPracownika i Nr)
-- do tego dodaj tabelę Produkty (pole łączące to NazwaProduktu i Nazwa)
-- 5.Imię i nazwisko pracownika, nazwa i suma punktów ze sprzedaży produktu – tylko dla pracowników z oddziału w Warszawie

-- sumę punktów odnajdziesz, gdy pomnożysz Ilosc i Punktacje
-- potrzebne tabele to Pracownicy i Sprzedaż (pole łączące to NrPracownika i Nr)
-- do tego dodaj tabelę Produkty (pole łączące to NazwaProduktu i Nazwa)
-- do tego dodaj tabelę Odziały, pola łączące to NrRozliczOddz z tabeli Pracownicy oraz NrRozlicz z tabeli Oddziały
-- w warunku wybierz tylko Miejscowsc 'Warszawa'


-- 6.Imiona, nazwiska i numery pracowników wyróżnionych w zeszłym okresie.
-- połącz tabelę Pracownicy i Wyroznieni (pole łączące to NrPracownika i Nr), w zestawieniu pojawią się tylko Ci pracownicy, których numery są w tabeli Wyróżnieni - sprawdź

SELECT imie, nazwisko
FROM pracownicy
    INNER JOIN Wyroznieni ON pracownicy.Nr = wyroznieni.NrPracownika;