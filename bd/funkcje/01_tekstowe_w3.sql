-- Funkcje tekstowe- spis

-- CONCAT

-- 1. Z tabeli Customers Wypisz w jednym polu Address, PostalCode, City jako Addres, oddzielone spacją
SELECT CONCAT(Address,' ', PostalCode,' ', City) as Addres  
FROM Customers;

-- 2. Wypisz nazwy produktów i ich ceny. Każda cena powinna być poprzedzona znakiem $
SELECT CONCAT('$',Price), ProductName
FROM products;

-- CONCAT_WS

-- 3. Z tabeli Suppliers Wypisz w jednym polu Address, PostalCode, City jako Addres, oddzielone spacją. Użyj funkcji CONCAT_WS
SELECT CONCAT_WS(' ', Address, PostalCode, City) as Address
FROM Suppliers;





-- SUBSTRING    SUBSTR   MID pozycja może być ujemna (liczymy wtedy od końca)

-- 4. Z nazwy produkt od trzeciego znaku dwa znaki
SELECT SUBSTRING(ProductName, 3, 2) FROM products;
-- 5 Shippers, wyświetlamy sam numer kierunkowy
SELECT SUBSTRING(Phone,2,3) FROM shippers;
-- 6. wyświetlamy przedostatni znak z Phone (pesel)
SELECT SUBSTRING(Phone,-2,1) FROM shippers;
-- LEFT

-- 7. Wypisz 12 pierwszych znaków z nazwy każdego klienta
SELECT LEFT(CustomerName,12) FROM Customers;
-- 8. Wypisz pierwsze 7 znaków nazwy produktu i dodaj na końcu znaki ...
SELECT LEFT(ProductName,7) FROM products;

SELECT CONCAT(LEFT(ProductName, 7) , '...')
FROM products;


-- REPLACE




-- REVERSE

-- CHAR_LENGTH długość w znakach

-- 9. Wypisz kraje, z których pochodzą dostawcy, a w osobnej kolumnie długość nazwy kraju 
SELECT Country,char_length(Country) 
FROM suppliers;

-- 10. Ile najwięcej znaków mają nazwy klientów? Wypisz.
SELECT MAX(CHAR_LENGTH(CustomerName))
FROM Customers;
-- 11. Dodatkowo wypisz najdłuższą nazwę lub nazwy

-- LENGTH długość w bajtach

-- 12. Wypisz długości nazw produktów używając funkcji char_length i length. Czy jest jakaś różnica?




-- UPPER 

-- 13. Wypisz nazwy kategorii zapisane wielkimi literami

-- LOWER

-- 14. Wypisz nazwy produktów małymi literami

-- SUBSTRING_INDEX

-- 15. oddziel imie i nazwisko z pola  ContactName

-- FORMAT   pl_PL

-- 16. Wypisz ceny produktów zaokrąglone do jednego miejsca po przecinku

-- 17. Dla poszczególnych kategorii wypisz średnie ceny, zaokrąglone do jednego miejsca po przecinku. 

-- LOCATE (napis1, napis2) zwraca pozycję pierwszego wystąpienia napisu1 w napisie2 POSITION (napis1 IN napis2)




-- REPEAT (napis, ile) powtarza napis określoną ilość razy

-- REPLACE (napis, from_string), new_string)

-- INSERT ?

-- FIELD?