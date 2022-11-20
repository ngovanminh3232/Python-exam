-- Ex 1
SELECT *
FROM Customers
WHERE Country = 'Mexico';
-- Ex 2
SELECT DISTINCT Country
FROM Customers;
-- Ex 3
SELECT * FROM Customers
WHERE Country IN ('Canada', 'USA', 'Mexico');

-- Ex 4
SELECT CustomerName FROM Customers
WHERE Country = 'USA' AND City <> 'San Francisco';
-- Ex 5
SELECT ProductName AS Name, Unit
FROM Products
WHERE Unit LIKE '%bottles%';

-- Ex 6
SELECT * FROM Products
ORDER BY Price

-- Ex 7
SELECT * FROM Products
WHERE Category = 'Beverages'
ORDER BY Price DESC
LIMIT 5;

-- Ex 8
SELECT * FROM Products
WHERE Price >= 10 AND Price <= 25
  AND Unit LIKE '%boxes%';

-- Ex 9
SELECT * FROM Orders
WHERE OrderDate >= '1996-08-01'
  AND OrderDate < '1996-09-01';
-- Ex 10
SELECT ProductID, Quantity
FROM OrderDetails
WHERE Quantity > 10