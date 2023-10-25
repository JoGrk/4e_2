-- 1. Wyświetl nazwy firm klientów z Niemiec. (nazwa,kraj, miasto)
SELECT CustomerName,City,Country 
FROM Customers
WHERE Country = 'Germany'
-- 2. Ogranicz do tych z Berlina.
SELECT CustomerName,City,Country 
FROM Customers
WHERE City = "Berlin";

-- 3. Wyświetlamy nazwy firm (kraj, miasto) klientów z Niemiec, ale nie z Berlina.
SELECT CustomerName,City,Country 
FROM Customers
WHERE City <> 'Berlin' AND Country = 'Germany';
-- 4. Nazwy firm (kraj, miasto) z miasta na literę A.
SELECT CustomerName,City,Country 
FROM Customers
WHERE City LIKE 'A%'

-- 5. Nazwy firm (kraj, miasto) z miasta, które na drugim miejscu ma literę a.


SELECT CustomerName,City,Country 
FROM Customers
WHERE City LIKE '_a%'


-- 6. Nazwy firm (kraj, miasto) z USA, Niemiec, Kanady i Francji.
SELECT CustomerName,City,Country 
FROM Customers
WHERE Country IN ('USA', 'Germany', 'Canada', 'France')
-- 7. Z kraju o nazwie co najmniej czteroliterowej
SELECT CustomerName,City,Country 
FROM Customers
WHERE Country LIKE '____%'

-- 8. Wyświetl dane o zamówieniach z lipca dowolnego roku. 

SELECT * 
FROM Orders
WHERE OrderDate LIKE "____-07-__";

-- 9. wyświetl dane o zamówieniach dokonanych w pierwszych 10 dniach lipca 1996
SELECT *
FROM Orders 
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-10'

-- 10 Wyświetl produkty uporządkowane według ceny rosnąco (najpierw najtańsze). 
SELECT *
FROM products
ORDER BY price;

-- 11. Wyświetl pięć najdroższych produktów
SELECT *
FROM products
ORDER BY price desc
LIMIT 5;
-- 12. Wyświetl towary (nazwy i ceny) o cenach pomiędzy 10 a 100
SELECT ProductName, price
FROM products
WHERE price BETWEEN 10 AND 100;
-- 13. Jak wyżej, ale tylko towary dostawców o kodzie 2.
SELECT ProductName, price, SupplierID
FROM products
WHERE price BETWEEN 10 AND 100
AND SupplierID =2;

-- 14. Jak wyżej, ale obok dostawców o kodzie 2  wybierz także 8, 7,4 i 3
SELECT ProductName, price, SupplierID
FROM products
WHERE price BETWEEN 10 AND 100
    AND SupplierID IN (2,8,7,4,3);
    