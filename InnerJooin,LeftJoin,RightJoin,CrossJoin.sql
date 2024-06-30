CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100)
);


CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
OrderDate DATE,
CustomerID INT,
Amount DECIMAL(10, 2),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES
(1, 'Ravi', 'Sharma', 'ravi.sharma@example.com'),
(2, 'Sita', 'Verma', 'sita.verma@example.com'),
(3, 'Lakshmi', 'Nair', 'lakshmi.nair@example.com'),
(4, 'Kiran', 'Patel', 'kiran.patel@example.com');

INSERT INTO Orders (OrderID, OrderDate, CustomerID, Amount)
VALUES
(1, '2024-01-10', 1, 1500.00),
(2, '2024-01-15', 2, 2000.00),
(3, '2024-02-10', 1, 3000.00),
(4, '2024-03-05', 3, 4000.00),
(5, '2024-04-12', 4, 2500.00);


SELECT o.OrderID, o.OrderDate, c.FirstName, c.LastName, o.Amount
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID;


SELECT o.OrderID, o.OrderDate, c.FirstName, c.LastName, o.Amount
FROM Orders o
LEFT JOIN Customers c ON o.CustomerID = c.CustomerID;


SELECT o.OrderID, o.OrderDate, c.FirstName, c.LastName, o.Amount
FROM Orders o
RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID;


SELECT o.OrderID, o.OrderDate, c.FirstName, c.LastName, o.Amount
FROM Orders o
CROSS JOIN Customers c;
