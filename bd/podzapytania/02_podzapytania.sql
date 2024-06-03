
 

SELECT CustomerName 
FROM Customers


-- Podzapytanie wybierające wiele wartości
-- 1. Wybierz dane klientów klientów, którzy nie kupili żadnego produktu z kategorii Confections
 
 WHERE CustomerID NOT IN (SELECT CustomerID
 FROM Orders
    INNER JOIN order_details ON order_details.orderID = Orders.orderID
    INNER JOIN products ON order_details.productID = Products.productID
    INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
    WHERE CategoryName = 'Confections');

-- 2. Czy są jacyś klienci którzy nie złożyli żadnego zamówienia w 1997 roku, jeśli tak to pokaż ich dane adresowe.
 
SELECT CustomerID
FROM orders
WHERE YEAR(OrderDate)=1997 AND CustomerID IS NOT NULL;

SELECT CustomerName,Country
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID
FROM orders
WHERE YEAR(OrderDate)=1997 AND CustomerID IS NOT NULL);

-- 3. Wyświetl nazwiska i imiona pracowników, którzy nie sprzedali niczego do Argentyny.

SELECT EmployeeID 
FROM orders
INNER JOIN Customers 
ON orders.CustomerID = Customers.CustomerID
Where Country = "Argentina";

SELECT FirstName, LastName
FROM Employees
WHERE EmployeeID NOT IN (SELECT EmployeeID 
FROM orders
INNER JOIN Customers 
ON orders.CustomerID = Customers.CustomerID
Where Country = "Argentina");


-- 4. Wypisz nazwy i kraje klientów, którzy zawsze zamawiali tylko jeden produkt.

SELECT DISTINCT CustomerID 
FROM orders
    INNER JOIN order_details
    ON order_details.orderID = orders.orderID
WHERE CustomerID IS NOT NULL
GROUP BY Orders.orderID
HAVING COUNT(*)>1


SELECT CustomerName , Country 
FROM Customers 
WHERE CustomerID NOT IN (SELECT DISTINCT CustomerID 
FROM orders
    INNER JOIN order_details
    ON order_details.orderID = orders.orderID
WHERE CustomerID IS NOT NULL
GROUP BY Orders.orderID
HAVING COUNT(*)>1);

 
 
 
-- Podzapytania i zapytania DML
-- 1. Usuń wszystkich szczegóły zamówień (wiersze z OrderDetails) dotyczące produktu o nazwie "Chang"

DELETE FROM Order_Details
WHERE productID = (SELECT productID FROM Products WHERE productname = "Chang");

-- 2. Zwiększ o 10% ceny wszystkich produktów z kategorii "Confections"
SELECT CategoryID
FROM Categories 
WHERE CategoryName = "Confections";

UPDATE products 
SET price= price *1.1 
WHERE CategoryID = (SELECT CategoryID
FROM Categories 
WHERE CategoryName = "Confections" );
-- 3. Zmniejsz o 5% ceny wszystkich produktów dostarczanych przez dostawców z  Tokyo  (city)
UPDATE products
SET Price=Price*0.95
WHERE SupplierID = (SELECT SupplierID
FROM Suppliers
WHERE City = 'Tokyo');

-- 4. Usuń wszystkie produkty z kategorii  o opisie "Cheeses" (Description)  o cenie większej od 50
DELETE FROM Products
WHERE CategoryID = (SELECT CategoryID
FROM Categories
WHERE Description = 'cheeses');

-- 5. Zwiększ o 10% cenę wszystkich produktów z kategorii o nazwie zaczynającej się na literę C 

-- 6. Usuwamy wszystkie produkty dostarczane przez dostawców z USA

-- 7. Usuń wszystkie zamówienia z Orders złożone przez klientów z Londynu ('London').

 
-- Podzapytania wybierające jedną wartość
-- 1. Podaj wszystkie produkty których cena jest mniejsza niż średnia cena produktu
SELECT AVG(Price)
FROM Products;

SELECT productname, price
FROM products
WHERE price <(SELECT AVG(Price)
FROM Products);
 
-- 2. Dla każdego produktu podaj jego nazwę, cenę, średnią cenę wszystkich produktów oraz różnicę między ceną produktu a średnią ceną wszystkich produktów
 SELECT productname, Price, 
    (SELECT AVG(Price) FROM Products),
    Price - (SELECT AVG(Price) FROM Products)
 FROM Products;
 
 
 
 