-- 1. Przygotuj widok Wspolpracownicy zawierający imiona i nazwiska osób z tabeli Pracownicy i z tabeli Handlowcy.
CREATE VIEW Wspolpracownicy AS
SELECT imie,nazwisko 
FROM Pracownicy 
UNION 
SELECT imie,nazwisko 
FROM Handlowcy;
 
-- 2. Korzystając z perspektywy Wspolpracownicy wyszukaj osoby o imieniu Ilona.
SELECT * FROM Wspolpracownicy 
WHERE imie = 'Ilona';

-- 3. Przygotuj widok SredniPrzebiegAut wyświetlający rocznik i średni przebieg aut z danego rocznika.
CREATE VIEW SredniPrzebiegAut AS
SELECT rocznik, AVG(przebieg) AS SredniPrzebieg FROM Auta
Group BY rocznik;

-- 4. Zgłoś zapytanie do perspektywy SredniPrzebiegAut: wyszukaj informacje o rocznikach, z których średni przebieg aut jest mniejszy od 100000.
 SELECT * FROM SredniPrzebiegAut
 WHERE SredniPrzebieg <100000;
-- 5.Utwórz widok ModeleNazwy, w którym wyświetlisz dla każdego modelu jego nazwę (w kolumnie o nazwie model) i nazwę producenta pobraną z tabeli Producenci (w kolumnie o nazwie producent) oraz rocznik początkowy i rocznik końcowy danego modelu.
 SELECT Producenci.Nazwa AS Producent_nazwa,
    Modele.nazwa AS Model_nazwa,
    rocznik_pocz,rocznik_konc 
FROM Producenci
    INNER JOIN Modele ON Producenci.ID =Modele.producent;


-- 6. Za pomocą widoku ModeleNazwy policz, ile jest modeli Fiata i wyniki wyświetl w kolumnie o nazwie Fiat
 
-- 7. Przy użyciu perspektywy ModeleNazwy wyświetl nazwy wszystkich modeli produkowanych przez Fiata
 
-- 8. Usuń widok wirtualny ModeleNazwy.
 
-- 9. przygotuj widok ModeleAuta zawierający wszystkie pola z tabeli Auta oraz wszystkie niemal pola z tabeli Modele (oprócz identyfikatora) (użyj INNER JOIN)
 
-- 10. Korzystając z perspektywy ModeleAuta wyświetl nazwę, rocznik, wartość samochodów Megane (nazwa)
 
-- 11. usuń widok ModeleAuta
 
-- 12. Przygotuj widok ProducenciModeleAuta zbierający dane z tych trzech tabel (z wyjątkiem zdublowanych) (uzyj INNER JOIN)
 
-- 13. Korzystając z widoku ProducenciModeleAuta wyświetl auta o przebiegu mniejszym niż 150 000