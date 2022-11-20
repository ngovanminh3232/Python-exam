-- Ex 1
SELECT O.OrderID, C.CustomerID, C.CustomerName, C.Country

-- Ex 2
SELECT C.Country, COUNT(O.OrderID) AS Ordered

-- Ex 3
SELECT P.ProductID, P.ProductName, O.Quantity, P.Price
FROM OrderDetails O LEFT JOIN Products P
ON O.ProductID = P.ProductID
WHERE O.OrderID = 10248;


-- Ex 4 - Method 1
SELECT O.OrderID, SUM(O.Quantity * P.Price) AS TotalAmount
FROM OrderDetails O LEFT JOIN Products P
ON O.ProductID = P.ProductID
WHERE O.OrderID = 10248
  FROM OrderDetails O LEFT JOIN Products P
  ON O.ProductID = P.ProductID
  WHERE O.OrderID = 10248

-- Ex 5 - Reuse code from Ex 4-Method 1
SELECT O.OrderID, SUM(O.Quantity * P.Price) AS TotalAmount
FROM OrderDetails O LEFT JOIN Products P
ON O.ProductID = P.ProductID
WHERE O.OrderID IN (SELECT OrderID FROM Orders WHERE OrderDate = '1996-08-01')


-- Ex 6 - Method 1: OR in WHERE
SELECT OrderID, CustomerID, OrderDate
   OR OrderDate < '1996-07-08';

-- Ex 6 - Method 2: UNION
SELECT OrderID, CustomerID, OrderDate
UNION
SELECT OrderID, CustomerID, OrderDate
WHERE OrderDate < '1996-07-08';


-- Ex 7
SELECT ProductID , ProductName, Price FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products)
ORDER BY Price;


-- Ex 8
SELECT DISTINCT O.OrderID, O.CustomerID, O.OrderDate
  INNER JOIN OrderDetails OD ON O.OrderID = OD.OrderID
  INNER JOIN Products P ON OD.ProductID = P.ProductID
WHERE P.Category = 'Dairy Products'
ORDER BY O.OrderID;


-- Ex 9 - Develop code from Ex 8
SELECT DISTINCT C.CustomerID, C.CustomerName
  INNER JOIN Orders O ON C.CustomerID = O.CustomerID
  INNER JOIN OrderDetails OD ON O.OrderID = OD.OrderID
  INNER JOIN Products P ON OD.ProductID = P.ProductID
WHERE P.Category = 'Dairy Products'
ORDER BY C.CustomerID;