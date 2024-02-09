-- 1. Utwórz tabelę KatalogConfections zawierającą wszystkie dane o produktach z kategorii Confections
CREATE TABLE Confections AS 
SELECT Products.*
FROM Products
    INNER JOIN categories ON categories.CategoryID=Products.CategoryID 
WHERE Categoryname = 'Confections';

-- 2. ze względu na nowy podatek podnieś cenę wszystkich artykułów kategorii Confections o 20% w tabeli Products
UPDATE Products
Set Price=Price*1.2
WHERE CategoryID=(SELECT CategoryID FROM Categories WHERE Categoryname='Confections');

-- 3. Zmień nazwę tabeli KatalogConfections na KatalogTaniejJuzBylo 
ALTER TABLE Confections
RENAME TO KatalogTaniejJuzBylo ;

-- 4. Skopiuj do tabeli KatalogTaniejJuzBylo wszystkie produkty z kategorii Beverages
INSERT INTO KatalogTaniejJuzBylo 
SELECT Products.*
FROM Products
    INNER JOIN categories ON categories.CategoryID=Products.CategoryID 
WHERE Categoryname = 'Beverages';

-- 5. Do tabeli Archiwum przenieś dane z tabeli Orders dotyczące zamówień z 1996 roku (skopiuj - jeśli trzeba utwórz tabelę -i potem usuń)
CREATE TABLE Archiwum AS
SELECT * FROM Orders
WHERE OrderDate LIKE '1996%'

-- 6. Utwórz tabelę  Archiwum_Kontrahentów z danymi: nazwa dostawcy lub nazwa klienta, osoba do kontaktu, miasto, kraj z Włoch
CREATE TABLE Archiwum_Kontrahentow AS
SELECT SupplierName AS ContractorName, ContactName, City, Country 
FROM Suppliers
WHERE Country = 'Italy' 
UNION 
SELECT CustomerName, ContactName, City, Country 
FROM Customers
WHERE Country = 'Italy';

-- 7. Usuń klientów i dostawców z Włoch z tabel Customers i Suppliers (dwoma zapytaniami)
UPDATE Orders 
SET CustomerID = null
WHERE CustomerID IN(SELECT CustomerID FROM Customers WHERE Country = 'Italy');
DELETE FROM Customers
WHERE Country = 'Italy';
DELETE FROM Suppliers
WHERE Country = 'Italy'

-- 8. Do tabeli Archiwum_Kontrahentów dodaj kontrahentów z Niemiec i Francji

 

-- 9. Z tabeli Customers wybierz dane klientów z Niemiec i dodaj ich do tabeli Suppliers

-- 10. Utwórz tabelę Archiwum zawierającą wszystkie dane z tabeli Orders dotyczące zamówień z 1996 roku

 

-- 11. Usuń z tabeli Orders wszystkie zamówienia z 1996 roku

-- 12. Do tabeli Archiwum dodaj wszystkie dane dotyczące zamówień ze stycznia 1997 roku

 