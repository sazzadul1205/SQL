-- Create database
/*
CREATE DATABASE ShopDB;
*/

-- Use database
/*
USE ShopDB;
*/

-- Create Customers table
/*
CREATE TABLE Customers
(
    CustomerId INT PRIMARY KEY IDENTITY(1,1),
    CustomerName VARCHAR(100) NOT NULL,
    ReferredBy INT NULL
);
*/

-- Create Orders table
/*
CREATE TABLE Orders
(
    OrderId INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    CustomerId INT NULL
);
*/

-- Insert customers
/*
INSERT INTO Customers (CustomerName, ReferredBy)
VALUES
('Arif', NULL),
('Nusrat', 1),
('Imran', 1),
('Lamia', 2),
('Shuvo', NULL);
*/

-- Insert orders
/*
INSERT INTO Orders (ProductName, CustomerId)
VALUES
('Laptop', 1),
('Mouse', 1),
('Keyboard', 2),
('Monitor', 2),
('Headset', 4),
('Webcam', NULL);
*/

-- INNER JOIN: only customers who have orders
/*
SELECT c.CustomerName, o.ProductName
FROM Customers c
INNER JOIN Orders o ON c.CustomerId = o.CustomerId;
*/

-- LEFT JOIN: all customers, even without orders
/*
SELECT c.CustomerName, o.ProductName
FROM Customers c
LEFT JOIN Orders o ON c.CustomerId = o.CustomerId;
*/

-- RIGHT JOIN: all orders, even without a customer
/*
SELECT c.CustomerName, o.ProductName
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerId = o.CustomerId;
*/

-- FULL OUTER JOIN: all rows from both tables
/*
SELECT c.CustomerName, o.ProductName
FROM Customers c
FULL OUTER JOIN Orders o ON c.CustomerId = o.CustomerId;
*/

-- CROSS JOIN: every customer with every order
/*
SELECT c.CustomerName, o.ProductName
FROM Customers c
CROSS JOIN Orders o;
*/

-- Customers without orders
/*
SELECT c.CustomerName
FROM Customers c
LEFT JOIN Orders o ON c.CustomerId = o.CustomerId
WHERE o.OrderId IS NULL;
*/

-- Orders without a customer
/*
SELECT o.ProductName
FROM Orders o
LEFT JOIN Customers c ON o.CustomerId = c.CustomerId
WHERE c.CustomerId IS NULL;
*/

-- SELF JOIN: customer and who referred them
/*
SELECT c.CustomerName AS Customer, r.CustomerName AS ReferredBy
FROM Customers c
LEFT JOIN Customers r ON c.ReferredBy = r.CustomerId;
*/