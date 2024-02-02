DELETE FROM wypozyczenia 
WHERE id_czytelnik =2;

SELECT tytul,imie,nazwisko
FROM autorzy
    INNER JOIN ksiazki ON autorzy.id= ksiazki.id_autor;

SELECT id, imie, nazwisko
FROM czytelnicy;