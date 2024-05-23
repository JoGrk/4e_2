-- 1. Zaimportuj dane
zrobione

-- 2 Przygotuj widok Gracze2018  ilu graczy dołączyło do gry w 2018 z poszczególnych krajów.
CREATE VIEW Gracze2018 as
SELECT COUNT(id_gracza) as ilosc, kraj
    from gracze 
    WHERE data_dolaczenia LIKE "2018%" 
    GROUP BY kraj;


-- 3. Korzystając z widoku Gracze2018 podaj 5 krajów, z których najwięcej graczy dołączyło do gry w 2018 roku. Dla każdego z tych krajów podaj liczbę graczy, którzy dołączyli w 2018 roku.
SELECT * FROM Gracze2018
ORDER BY ilosc DESC LIMIT 5;


-- 4. Utwórz widok klasyJednostki, który zawiera pola: id_jednostki, nazwa, sila, strzal.
CREATE VIEW klasyJednostki as
SELECT id_jednostki, jednostki.nazwa, sila, strzal 
FROM jednostki
    INNER JOIN klasy ON klasy.nazwa = jednostki.nazwa;


-- 5. Korzystając z widoku klasyJednostki  podaj sumę wartości pola strzał (strzal) dla każdej klasy jednostek, które mają „elf” jako część nazwy.
SELECT SUM(strzal), nazwa
FROM klasyJednostki 
WHERE nazwa LIKE "%elf%"
GROUP BY nazwa;

-- 6. Przygotuj widok Artylerzysci zawierający numery graczy, którzy mają jednostki o nazwie artylerzysta
CREATE VIEW Artylerzysci as
SELECT gracze.id_gracza FROM gracze
INNER JOIN jednostki ON gracze.id_gracza = jednostki.id_gracza
WHERE nazwa='artylerzysta';
-- 7. Podaj numery graczy, którzy nie mają artylerzystów (jednostek o nazwie artylerzysta). Numery podaj w porządku rosnącym (numery graczy, których nie ma w wyniku zwracanym przez Artylerzysci) (?)
SELECT id_gracza
FROM gracze
WHERE id_gracza NOT IN(SELECT * FROM Artylerzysci);

-- 8. utwórz widok  jednostkiOdBramy, zawierający id jednostki, nazwe, szybkosc oraz odleglosc od Kamiennej bramy ( |x – x1| + |y – y1|  )

-- Jeden krok jednostki to przejście o 1 w dowolnym z czterech kierunków (północ, południe, wschód lub zachód). W jednej turze jednostka może wykonać co najwyżej tyle kroków, ile wynosi jej szybkosc. Innymi słowy jednostka w ciągu jednej tury może przemieścić się z punktu (x,y) do punktu (x1,y1), jeśli |x – x1| + |y – y1| ≤ szybkosc. Tytułowa Kamienna Brama znajduje się w miejscu (100,100). 

-- 9.Korzystając z widoku jednostkiOdBramy wyszukaj jednostki, które mogą w jednej turze dojść do Bramy, i podziel je na poszczególne klasy. Utwórz zestawienie, które dla każdej klasy poda jej nazwę oraz liczbę jednostek z tej klasy mogących w jednej turze osiągnąć Bramę.

-- 10. przygotuj widok bitwy, który będzie dla każdej lokalizacji liczył ilu jest różnych graczy i wyświetłą tylko te wiersze, gdzie ta ilość jest większa od 1

-- Jeśli w pewnej lokalizacji znajdują sięjednostki więcej niż jednego gracza, toczy się tam (jedna) bitwa. Oblicz: a) ile bitew ma miejsce na planszy, b) w ilu bitwach biorą udział gracze z Polski