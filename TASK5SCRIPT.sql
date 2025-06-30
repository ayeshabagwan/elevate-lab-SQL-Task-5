use hotel_management;
-- Customers Table
CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(50),
  City VARCHAR(50)
);

-- Orders Table
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  Product VARCHAR(50),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert into Customers
INSERT INTO Customers VALUES
(1, 'Ali', 'sawantwadi'),
(2, 'Sara', 'aamchi'),
(3, 'Ravi', 'Islampur');

-- Insert into Orders
INSERT INTO Orders VALUES
(101, 1, 'Laptop'),
(102, 1, 'Mouse'),
(103, 2, 'Keyboard');
SELECT * FROM Customers;
SELECT * FROM Orders;

-- inner join

SELECT Customers.Name, Orders.Product
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- left  join 
SELECT Customers.Name, Orders.product
FROM Customers
LEFT JOIN 	Orders ON Customers.CustomerID = Orders.CustomerID;

-- right  join 
SELECT Customers.Name, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- FULL OUTER JOIN
-- left  join 
SELECT Customers.Name, Orders.product
FROM Customers
LEFT JOIN 	Orders ON Customers.CustomerID = Orders.CustomerID

UNION

-- right  join 
SELECT Customers.Name, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- CROSS JOIN
SELECT Customers.Name, Orders.Product
FROM Customers
CROSS JOIN Orders;

-- natural join
SELECT * FROM Customers NATURAL JOIN Orders;

