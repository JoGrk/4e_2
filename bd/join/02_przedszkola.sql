-- 1.  Wykonaj zapytania sql wyszukujące odpowiedzi na poniższe pytania:
-- A. Ile jest chętnych do przyjęcia do poszczególnych przedszkoli? Wyświetl nazwę przedszkola i ilość chętnych.
SELECT Nazwa_przedszkola, count(*)
FROM przedszkola
    INNER JOIN dzieci ON przedszkola.Id_przedszkola= dzieci.Id_przedszkola 
GROUP BY przedszkola.Id_przedszkola;

-- B. Ilu jest chętnych do przyjęcia do poszczególnych przedszkoli, uwzględnij wyłącznie trzylatków
SELECT Nazwa_przedszkola, count(*)
FROM przedszkola
   INNER JOIN dzieci ON przedszkola.Id_przedszkola= dzieci.Id_przedszkola
WHERE wiek=3
GROUP BY przedszkola.Id_przedszkola;
-- C. Wyświetl imiona i nazwiska dzieci, które mają na liście preferencji przedszkole mające w nazwie "Zuch". 
SELECT Nazwa_przedszkola,imie,nazwisko 
FROM przedszkola 
    INNER JOIN dzieci ON przedszkola.Id_przedszkola=dzieci.Id_przedszkola
WHERE Nazwa_przedszkola LIKE "%Zuch%"    




-- D. Wyświetl imiona i nazwiska dzieci, które chodzą do przedszkola o identyfikatorze 16, 14, 8,28, 27 . Użyj operatora IN.
SELECT imie,nazwisko 
FROM dzieci
WHERE Id_przedszkola IN (16,14,8,28,27);
-- E. Zmodyfikuj zapytanie z części D tak, aby zamiast numerów przedszkoli były wyświetlane ich nazwy.
SELECT imie,nazwisko, Nazwa_przedszkola
FROM dzieci
    INNER JOIN przedszkola ON przedszkola.id_przedszkola=dzieci.id_przedszkola
WHERE dzieci.Id_przedszkola IN (16,14,8,28,27);


-- F. Policz, ilu jest kandydatów do poszczególnych przedszkoli (wystarczą identyfikatory, uwzględnij tylko chłopców. Dane uporządkuj malejąco według ilości chętnych. Wyświetl tylko te wiersze, w których  ta ilość jest większa od 15.'

SELECT count(*), Id_przedszkola 
FROM Dzieci
Where Plec='Chlopiec'
GROUP BY id_przedszkola 
HAVING count(*) > 15
ORDER BY count(*) desc;

-- G. Policz, ilu jest chętnych do poszczególnych przedszkoli. Wyświetl nazwy przedszkoli i liczbę miejsc w przedszkolach. Czy są takie przedszkola, w których liczba chętnych jest różna od ilości miejsc? 

-- H. Utwórz uporządkowaną alfabetycznie według nazwisk, listę pięcioletnich dziewczynek, które są zapisane do przedszkola Smerf lub Stokrotka.

-- I.  Podaj nazwy czterech przedszkoli, które mają największą ilość chętnych (uporządkowane malejąco według ilości chętnych) 