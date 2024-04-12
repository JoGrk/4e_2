-- Dyrektor szkoły dysponuje plikami Uczniowie, Klasy i Przedmioty. Oto opisy wierszy w poszczególnych plikach: 
-- Uczniowie – imię i nazwisko ucznia, numer jego legitymacji szkolnej oraz identyfikator klasy maturalnej, do której uczęszcza uczeń, np.: 
-- Jan Kowalski 7205 C 

-- Klasy – identyfikator klasy maturalnej i profil tej klasy, np.: 
-- C informatyczna 

-- Przedmioty – identyfikator przedmiotu, nazwa przedmiotu, np.: 
-- jp język polski 

-- Naszym celem jest zaprojektowanie bazy danych pozwalającej uzyskiwać informacje o tym, które  przedmioty zostały wybrane na maturę przez poszczególnych uczniów. W szczególności dyrektor chciałby u zyskiwać następujące informacje: 
-- - wykaz uczniów, którzy zdają dany przedmiot (np. język angielski) na maturze, 
-- - wykaz uczniów z klas informatycznych, którzy nie zdają matematyki na maturze. 


-- Lista przedmiotów maturalnych (plik Przedmioty) może się zmieniać, dlatego nie należy przyjmować, że jest ona z góry ustalona. Zmiana listy przedmiotów maturalnych nie powinna wymagać zmiany struktury tabel bazy danych. 

-- a) W tabelach relacyjnej bazy danych istotne jest stosowanie kluczy. Dla każdej z tabel wskaż kolumnę lub grupę kolumn, która jest jej kluczem podstawowym. 

-- Uczniowie(Imię, Nazwisko, NumerLegitymacji, IdKlasy)
-- Klasy(IdKlasy, Profil)
-- Przedmioty(IdPrzedmiotu, Nazwa)
-- Zaprojektuj strukturę relacyjnej bazy danych, z której można uzyskać informacje potrzebne dyrektorowi. Przyjmij, że na maturze uczniowie mogą zdawać dowolną liczbę przedmiotów.  

-- 1. Ustal, jakie tabele będą wchodziły w skład bazy danych (wykorzystaj definicje tabel z punktu a), jeśli to konieczne dodaj nowe tabele).  

-- Określ nazwy kolumn i typy danych dla kolumn tworzących poszczególne tabele w Twojej bazie danych. Przyjmij, że numer legitymacji jest liczbą naturalną z zakresu od 1 do 999999.