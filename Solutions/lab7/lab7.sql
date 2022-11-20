-- Ex 1
SELECT MIN(OrderDate) AS EarliestDateFROM Orders;
-- Ex 2
SELECT COUNT(OrderID) AS TotalOrdersFROM Orders;
-- Ex 3
SELECT OrderID, SUM(Quantity) AS TotalItems
FROM OrderDetails
GROUP BY OrderID

-- Ex 4
SELECT SUM(Quantity)*1.0 / COUNT(DISTINCT OrderId) AS AvgItems
FROM OrderDetails;
-- Ex 5
SELECT OrderID, COUNT(DISTINCT ProductID) AS DistinctItems
FROM OrderDetails
GROUP BY OrderID;

-- Ex 6
SELECT Category, AVG(Price) AS AvgPrice
FROM Products
GROUP BY Category
HAVING AvgPrice >= 20 AND AvgPrice <= 30;

-- Ex 7
SELECT Country, COUNT(CustomerID) AS CustomerCount
FROM Customers
GROUP BY Country
HAVING CustomerCount > 10;

-- Ex 8
SELECT CustomerID, COUNT(CustomerID) AS Ordered
FROM Orders
GROUP BY CustomerID
ORDER BY Ordered DESC;

-- Ex 9
SELECT ProductID, COUNT(ProductID) AS OrderedFROM OrderDetailsGROUP BY ProductIDHAVING Ordered > 10;
-- Ex 10
SELECT ProductID, SUM(Quantity) AS TotalItems
FROM OrderDetails
WHERE ProductID = 1
GROUP BY ProductID;