-- 1 Towary, których WAGA >150 kg;
SELECT *
FROM Towar
WHERE Waga>150;
-- 2. całkowita wartość pola CENA jest trzycyfrowa;

SELECT *
FROM Towar
WHERE CENA BETWEEN 100 AND 999;

-- 3. 23% podatek od jednej sztuki wynosi więcej niż 750 zł;
SELECT *
FROM Towar
WHERE CENA * 0.23 > 750
-- 4. CENA < 10 zł., lub CENA >10000 zł i równocześnie ILOSC < 5;
SELECT *
FROM Towar
WHERE (CENA <10 OR CENA >10000) AND ILOSC <5;

-- 5. cena 1 kg (CENA / WAGA) jest mniejsza od 10 zł i równocześnie większa od 5 zł;

SELECT * 
FROM Towar
WHERE CENA/WAGA <10 and CENA/WAGA >5;

-- 6. całkowita masa (ILOSC * WAGA) jest większa od ceny, a mniejsza od potrójnej ceny;
SELECT ilosc,waga,cena
FROM Towar
Where (ilosc*waga) > cena AND (ilosc*waga) < (cena*3);

-- 7. tylko ZAMÓWIONE towary, których waga =1;
SELECT *
FROM towar 
WHERE ZAMOW='PRAWDA' AND waga=1;
-- 8. nazwy towarów, których RODZAJ = NA i GD (również małymi literami);
SELECT *
FROM towar
WHERE RODZAJ IN ('NA','GD');

-- 9. wyświetl nazwy towarów, które nie zawierają litery a w NAZWIE;
SELECT *
FROM towar
WHERE NOT NAZWA LIKE "%a%";
-- 10 Wyprodukowane w 1997 roku;
SELECT *
FROM towar
WHERE DATA_PROD LIKE '1997-%';
-- 11. (DATA_PROD - od początku 1995 roku do końca 1998,) CENA jest dwucyfrowa, WAGA < 0.5;
SELECT *
FROM Towar
WHERE DATA_PROD BETWEEN '1995-01-01' AND '1998-12-31'
    AND Cena BETWEEN 10 AND 99
    AND Waga < 0.5;

-- 12. jw. wyświetl tylko NAZWĘ, RODZAJ I CENĘ;

SELECT NAZWA, RODZAJ, CENA
FROM Towar
WHERE DATA_PROD BETWEEN '1995-01-01' AND '1998-12-31'
    AND Cena BETWEEN 10 AND 99
    AND Waga < 0.5;


-- 13. rekordy w których CENA jest pomiędzy 12,50 a 35 i WAGA jest pomiędzy 0,5 a 2,5;

SELECT *
FROM Towar
WHERE (CENA BETWEEN 12.50 AND 35) 
    AND (WAGA BETWEEN 0.5 AND 2.5);

-- 14. jw. - wyświetl tylko NAZWĘ, RODZAJ i wartość (ILOSC * CENA) ;
SELECT nazwa, rodzaj, ILOSC * CENA
FROM Towar
WHERE (CENA BETWEEN 12.50 AND 35) 
    AND (WAGA BETWEEN 0.5 AND 2.5); 

-- 15. jw. posortowane malejąco wg NAZWY ; 
SELECT nazwa, rodzaj, ILOSC * CENA AS WARTOSC
FROM Towar
WHERE (CENA BETWEEN 12.50 AND 35) 
    AND (WAGA BETWEEN 0.5 AND 2.5)
ORDER BY nazwa;
-- 16. różne RODZAJE towarów (bez powtórek) ; (wskazówka: SELECT DISTINCT...)
SELECT DISTINCT rodzaj 
FROM towar
