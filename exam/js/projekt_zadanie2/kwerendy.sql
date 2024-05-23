Zapytanie 1: wybierające jedynie pola imie i nazwisko dla wszystkich rekordów w tabeli autorzy, 
posortowane rosnąco nazwiskami autorów 
SELECT imie,nazwisko
FROM autorzy
ORDER BY nazwisko;
Zapytanie 2: wstawiające do tabeli czytelnicy nowy rekord z danymi: Ewa Kowalska z kodem 
145321. Wartość klucza głównego nadawana automatycznie
INSERT INTO czytelnicy (imie,nazwisko,kod)
VALUES ('Ewa','Kowalska',145321)
Zapytanie 3: wybierające jedynie pole tytul dla wszystkich utworów w tabeli ksiazki, należących 
do kategorii dramat
SELECT tytul
FROM ksiazki
    INNER JOIN kategorie ON ksiazki.id_kategoria=kategorie.id
WHERE nazwa='dramat';
Zapytanie 4: wybierające jedynie pole tytul wszystkich utworów w tabeli książki, wypożyczonych 
przez czytelnika o identyfikatorze 2. W zapytaniu 4 należy posłużyć się relacją
SELECT tytul
FROM ksiazki
    INNER JOIN wypozyczenia ON ksiazki.id=wypozyczenia.id_ksiazka
WHERE id_czytelnik=2;
