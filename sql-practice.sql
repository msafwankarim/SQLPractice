SELECT CategoryName, Description FROM Categories


SELECT FirstName, LastName, HireDate 
FROM Employees
WHERE 
	Title = 'Sales Representative'
	AND
	Country = 'USA'


SELECT OrderID, OrderDate FROM Orders
WHERE EmployeeID = 5

SELECT SupplierID, ContactName, ContactTitle
FROM Suppliers
WHERE ContactTitle <> 'Marketing Manager'

SELECT ProductID, ProductName
FROM Products
WHERE ProductName LIKE '%queso%'


SELECT OrderID, CustomerID, ShipCountry
FROM Orders
WHERE ShipCountry = 'France' OR ShipCountry = 'Belgium'

SELECT OrderID, CustomerID, ShipCountry
FROM Orders
WHERE ShipCountry IN ('Brazil','Mexico', 'Argentina', 'Venezuela')

SELECT FirstName, LastName, Title, BirthDate
FROM Employees
ORDER BY BirthDate ASC


SELECT FirstName, LastName, Title, CONVERT(Date, BirthDate) AS BirthYear
FROM Employees
ORDER BY BirthDate ASC

SELECT FirstName, LastName, CONCAT(FirstName, ' ', LastName) As FullName
FROM Employees


SELECT OrderID, ProductID, UnitPrice, Quantity, UnitPrice * Quantity AS TotalPrice
FROM [Order Details]

SELECT COUNT(CustomerID) 
FROM Customers

SELECT MIN(OrderDate)
FROM Orders;

SELECT DISTINCT Country
FROM Customers

SELECT ContactTitle, Count(*) AS [Number of Employees]
FROM Customers
GROUP BY ContactTitle

SELECT t1.ProductID, t1.ProductName, t2.CompanyName
FROM Products as t1
JOIN Suppliers as t2 
ON t1.SupplierID = t2.SupplierID


SELECT OrderID, CONVERT(DATE, OrderDate), Shippers.*
FROM Orders
JOIN Shippers
ON Orders.ShipVia = Shippers.ShipperID
WHERE OrderID < 10300


SELECT Categories.CategoryName, COUNT(Products.ProductID) AS TotalProducts
FROM Products
JOIN Categories
ON Products.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName


SELECT Country, City, COUNT(*) AS TotalCustomers 
FROM Customers
GROUP BY Country, City

