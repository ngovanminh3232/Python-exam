-- CREATE DATABASE
CREATE DATABASE Northwind;
GO
USE Northwind;

-- CREATE TABLES

CREATE TABLE Customers(
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(255),
  Address VARCHAR(255),
  City VARCHAR(63),
  Country VARCHAR(63)
);

CREATE TABLE Products(
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(255),
  Category VARCHAR(63),
  Unit VARCHAR(255),
  Price DECIMAL
);

CREATE TABLE Orders(
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE
);

CREATE TABLE OrderDetails(
  OrderDetailID INT PRIMARY KEY,
  OrderID INT,
  ProductID INT,
  Quantity INT
);

--
-- ADD DATA TO TABLES

-- Customers
INSERT INTO Customers(CustomerID, CustomerName, Address, City, Country) VALUES(1, 'Alfreds Futterkiste', 'Obere Str. 57', 'Berlin', 'Germany');
INSERT INTO Customers(CustomerID, CustomerName, Address, City, Country) VALUES(2, 'Ana Trujillo Emparedados', 'Avda. de la Constitución 2222', 'México D.F.', 'Mexico');
INSERT INTO Customers(CustomerID, CustomerName, Address, City, Country) VALUES(3, 'Antonio Moreno Taquería', 'Mataderos 2312', 'México D.F.', 'Mexico');
INSERT INTO Customers(CustomerID, CustomerName, Address, City, Country) VALUES(4, 'Around the Horn', '120 Hanover Sq.', 'London', 'UK');
INSERT INTO Customers(CustomerID, CustomerName, Address, City, Country) VALUES(5, 'Berglunds snabbköp', 'Berguvsvägen 8', 'Luleå', 'Sweden');

-- Products
INSERT INTO Products(ProductID, ProductName, Category, Unit, Price) VALUES(1, 'Chais', 'Beverages', '10 boxes x 20 bags', 18);
INSERT INTO Products(ProductID, ProductName, Category, Unit, Price) VALUES(2, 'Chang', 'Beverages', '24 - 12 oz bottles', 19);
INSERT INTO Products(ProductID, ProductName, Category, Unit, Price) VALUES(3, 'Aniseed Syrup', 'Condiments', '12 - 550 ml bottles', 10);
INSERT INTO Products(ProductID, ProductName, Category, Unit, Price) VALUES(4, 'Chef Anton''s Cajun Seasoning', 'Condiments', '48 - 6 oz jars', 22);
INSERT INTO Products(ProductID, ProductName, Category, Unit, Price) VALUES(5, 'Chef Anton''s Gumbo Mix', 'Condiments', '36 boxes', 21.35);

-- Orders
INSERT INTO Orders(OrderID, CustomerID, OrderDate) VALUES(10248, 2, '1996-07-04');
INSERT INTO Orders(OrderID, CustomerID, OrderDate) VALUES(10249, 3, '1996-07-05');
INSERT INTO Orders(OrderID, CustomerID, OrderDate) VALUES(10250, 3, '1996-07-08');
INSERT INTO Orders(OrderID, CustomerID, OrderDate) VALUES(10251, 5, '1996-07-08');
INSERT INTO Orders(OrderID, CustomerID, OrderDate) VALUES(10252, 1, '1996-07-09');

-- Order Details
INSERT INTO OrderDetails(OrderDetailID, OrderID, ProductID, Quantity) VALUES(1, 10248, 1, 12);
INSERT INTO OrderDetails(OrderDetailID, OrderID, ProductID, Quantity) VALUES(2, 10248, 3, 10);
INSERT INTO OrderDetails(OrderDetailID, OrderID, ProductID, Quantity) VALUES(3, 10248, 2, 5);
INSERT INTO OrderDetails(OrderDetailID, OrderID, ProductID, Quantity) VALUES(4, 10249, 4, 9);
INSERT INTO OrderDetails(OrderDetailID, OrderID, ProductID, Quantity) VALUES(5, 10249, 1, 40);
