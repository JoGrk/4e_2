-- 1. policz ilość wszystkich rekordów (zapisów) ;
SELECT COUNT(*)
FROM towar;
-- 2. z opisami - największą i najmniejsza CENĘ, oraz średnią arytmetyczną CENY ;
SELECT MAX(cena) AS maksymalna, MIN(cena) AS minimalna,
AVG(cena) AS srednia
FROM towar;

--3. sumę wartości towarów, średnią arytmetyczną wartości (ILOSC * CENA) ;
SELECT SUM(ilosc*cena) AS suma, AVG(ilosc*cena) AS srednia
FROM towar;
--4. policz średnią arytmetyczną ceny, a później policz ręcznie średnią arytmetyczną ceny = suma CENY / ilość rekordów. 
SELECT  AVG(cena),SUM(cena)/COUNT(*)
FROM towar;
-- 5. Wyświetl średnią cenę wszystkich towarów o cenie pomiędzy 10 a 1000 zł

SELECT AVG(cena) as srednia 
FROM towar
WHERE cena BETWEEN 10 AND 1000;

-- 6. wyświetl sumę masy (ilosc * waga) , ale tylko dla rodzaju  GD i TR
SELECT sum(ilosc*waga) AS masa 
from towar
WHERE rodzaj IN ('GD','TR');

-- 7. Wyświetl łączną ilość wszystkich zamówionych produktów,
SELECT SUM(ilosc)
FROM towar
WHERE ZAMOW ='PRAWDA';

-- 8. wyświetl największą wartość (ilosc * cena)  towarów wyprodukowanych w 1997 roku
SELECT MAX(ilosc*cena)
FROM towar
WHERE DATA_PROD LIKe '1997-%';

-- 9. policz ile rekordów jest w każdym RODZAJU
SELECT rodzaj, COUNT(*)
FROM towar
GROUP BY rodzaj; 

-- 10. policz ile rekordów jest w każdym RODZAJU, posortuj malejąco wg RODZAJU;

-- 11. policz sumę i średnią arytmetyczną wartości (ilość * cena) i minimalnej i maksymalnej masie (ilość * waga) dla każdego RODZAJU towaru ;

-- 12. policz ile rekordów jest w każdym RODZAJU - wyświetl ilości rekordów większe od 15 ;

-- 13. policz średnią arytmetyczną ceny dla każdego RODZAJU - wyświetl średnie mniejsze od 500;

-- 14. dla każdego rodzaju towarów wyświetl ilość rekordów, średnią wagę, średnią ilość, maksymalną i minimalną cenę dla ilości rekordów w RODZAJU mniejszej od 15.

-- 15. dla każdego rodzaju towarów wyświetl maksymalną cenę dla ilości rekordów w RODZAJU większe od 10. Uwzględnij tylko towary zamówione.

-- 16. Oblicz minimalną cenę towarów niezamówionych dla każdego rodzaju. 

-- 17. oblicz średnią cenę towarów zamówionych (zamow) i nie zamówionych

-- 18. oblicz średnią cenę towarów wyprodukowanych w 1999 roku  dla poszczególnych rodzajów towaru