-- Ex 1
SELECT O.OrderID, C.CustomerID, C.CustomerName, C.CountryFROM Orders O LEFT JOIN Customers CON C.CustomerID = O.CustomerIDORDER BY O.OrderID;

-- Ex 2
SELECT C.Country, COUNT(O.OrderID) AS OrderedFROM Orders O LEFT JOIN Customers CON C.CustomerID = O.CustomerIDGROUP BY C.CountryORDER BY Ordered DESC;

-- Ex 3
SELECT P.ProductID, P.ProductName, O.Quantity, P.Price
FROM OrderDetails O LEFT JOIN Products P
ON O.ProductID = P.ProductID
WHERE O.OrderID = 10248;


-- Ex 4 - Method 1
SELECT O.OrderID, SUM(O.Quantity * P.Price) AS TotalAmount
FROM OrderDetails O LEFT JOIN Products P
ON O.ProductID = P.ProductID
WHERE O.OrderID = 10248GROUP BY O.OrderID;-- Ex 4 - Method 2: Re-use Ex 3 as subqueryWITH Details AS (  SELECT O.OrderID, O.Quantity, P.Price
  FROM OrderDetails O LEFT JOIN Products P
  ON O.ProductID = P.ProductID
  WHERE O.OrderID = 10248)SELECT OrderID, SUM(Quantity * Price) AS TotalAmountFROM DetailsGROUP BY OrderID;

-- Ex 5 - Reuse code from Ex 4-Method 1
SELECT O.OrderID, SUM(O.Quantity * P.Price) AS TotalAmount
FROM OrderDetails O LEFT JOIN Products P
ON O.ProductID = P.ProductID
WHERE O.OrderID IN (SELECT OrderID FROM Orders WHERE OrderDate = '1996-08-01')GROUP BY O.OrderID;


-- Ex 6 - Method 1: OR in WHERE
SELECT OrderID, CustomerID, OrderDateFROM OrdersWHERE Orders.CustomerID IN (SELECT CustomerID FROM Customers WHERE Country = 'Argentina')
   OR OrderDate < '1996-07-08';

-- Ex 6 - Method 2: UNION
SELECT OrderID, CustomerID, OrderDateFROM OrdersWHERE Orders.CustomerID IN (SELECT CustomerID FROM Customers WHERE Country = 'Argentina')
UNION
SELECT OrderID, CustomerID, OrderDateFROM Orders
WHERE OrderDate < '1996-07-08';


-- Ex 7
SELECT ProductID , ProductName, Price FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products)
ORDER BY Price;


-- Ex 8
SELECT DISTINCT O.OrderID, O.CustomerID, O.OrderDateFROM Orders O
  INNER JOIN OrderDetails OD ON O.OrderID = OD.OrderID
  INNER JOIN Products P ON OD.ProductID = P.ProductID
WHERE P.Category = 'Dairy Products'
ORDER BY O.OrderID;


-- Ex 9 - Develop code from Ex 8
SELECT DISTINCT C.CustomerID, C.CustomerNameFROM Customers C
  INNER JOIN Orders O ON C.CustomerID = O.CustomerID
  INNER JOIN OrderDetails OD ON O.OrderID = OD.OrderID
  INNER JOIN Products P ON OD.ProductID = P.ProductID
WHERE P.Category = 'Dairy Products'
ORDER BY C.CustomerID;