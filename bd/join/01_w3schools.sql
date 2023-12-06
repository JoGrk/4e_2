-- 1. Wyświetl nazwy firm klientów  i daty zamówień
 SELECT OrderDate, CustomerName 
FROM Orders 
  INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
-- 2, Wyświetl dane spedytora z datą zamówienia
 SELECT ShipperName,OrderDate 
FROM Shippers
	INNER JOIN Orders ON Shippers.ShipperID = Orders.ShipperID
-- 3. Wyświetl nazwiska pracowników i daty zamówień
 SELECT LastName,OrderDate 
FROM Employees
	INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID;
-- 4. Wyświetl nazwy towarów, nazwy kategorii
 
-- 5. Wyświetl nazwy towarów, nazwy kategorii i idzamówień
 
-- 6. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i idklienta
 
-- 7. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i nazwę firmy klienta
 
-- 8. Ile razy był zamawiany dany produkt? (podaj nazwy produktów)
 
-- 9. Wyświetl nazwy firm klientów, daty zamówień i nazwy towarów