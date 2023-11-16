--  1.Sumę wartości wszystkich zamówień (suma pola wartosc z tabeli zamowienia)
SELECT sum(wartosc) 
FROM zamowienia;

-- 2.  Średnią wartość wszystkich zamówień
SELECT AVG(wartosc)
FROM zamowienia;

-- 3. Ilość sprzedawców w bazie (tabela sprzedawcy)

SELECT count(*) 
FROM sprzedawcy;

-- 4. Największą wartość zamówienia

SELECT MAX(wartosc)
FROM zamowienia;

-- GROUP BY 

-- 5.  tabela klienci; pogrupuj według miast i dla każdego miasta podaj najwyższą ocenę ( jaka jest najwyższa ocena w każdym z tych miast)

SELECT Miasto, MAX(Ocena)
FROM klienci
GROUP BY Miasto;

-- 6. tabela zamówienia: pogrupuj według idsprzedawcy i dla każdego z nich podaj najwyższą wartość zamówienia
SELECT idsprzedawcy, MAX(wartosc)
from zamowienia
GROUP BY idsprzedawcy;
-- 7. tabela zamowienia: pogrupuj według idsprzedawcy i dla każdego z nich podaj najwyższą wartość zamówienia, ale wybierz tylko daty zamówienia z lipca, sierpnia i września 2012 (..........WHERE date beteen '2012-07-01' AND .........)
SELECT idsprzedawcy, MAX(wartosc)
FROM zamowienia
WHERE data between '2012-07-01' AND '2012-09-30'
GROUP BY idsprzedawcy;

-- 8. tabela zamowienia: pogrupuj według idKlienta, oblicz najwyższą wartość, wyświetl tylko te dane, w których ta największa wartość jest większa od 2000 (......... HAVING max(wartosc) > 2000 ............)
SELECT idklienta, MAX(wartosc)
FROM zamowienia
GROUP BY idsprzedawcy
HAVING MAX(wartosc)>2000;
-- 9.  tabela zamowienia: pogrupuj według idKlienta, oblicz najwyższą wartość, wyświetl tylko te dane, w których ta największa wartość jest z przedziału od 2000 do 6000
SELECT idKlienta, MAX(wartosc)
FROM zamowienia
GROUP by idKlienta
HAVING max(wartosc) > 2000 and max(wartosc) < 6000;
-- 10. tabela zamowienia: pogrupuj według idKlienta, oblicz najwyższą wartość, ale do zamówienia wybierz tylko klientów o ID z zakresu od 3002 do 3007 (..... WHERE IDKlienta BETWEEN .... AND ....  ......... )
SELECT idKlienta, max(wartosc)
FROM zamowienia
WHERE idKlienta BETWEEN 3002 AND 3007
GROUP BY idKlienta;
-- 11.  tabela zamowienia: pogrupuj według idKlienta, oblicz najwyższą wartość, do zamówienia wybierz tylko klientów o ID z zakresu od 3002 do 3007 (WHERE) , a następnie wyświetl tylko te wiersze, w których ta najwyższa wartość jest większa od 1000
SELECT idKlienta, max(wartosc)
FROM zamowienia
WHERE idKlienta BETWEEN 3002 AND 3007
GROUP BY idKlienta
HAVING max(wartosc)>1000;
-- 12. tabela zamowienia: pogrupuj według IDSprzedawcy, oblicz najwyższą wartość zmówienia, ale tylko dla sprzedawców o ID z zakresu od 5003 do 5008

-- 13. tabela zamówienia: oblicz ile było zamówień z datą '2012-08-17' (WHERE, bez group by)

-- 14. tabela sprzedawcy: ilu jest sprzedawców, dla których podane jest miasto? (WHERE, not null, bez group by)

-- 15.tabela zamówienia: policz ile było zamówień dokonanych w poszczególnych dniach (pogrupuj według daty, policz idzamówienia)