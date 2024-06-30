INSERT INTO Products (ProductID, ProductName, Description, Price, Quantity, Category, Brand, SKU)
VALUES 
(1, 'Laptop', 'A high-performance laptop', 999.99, 50, 'Electronics', 'HP', 'LAP12345'),
(2, 'Smartphone', 'A cutting-edge smartphone', 699.99, 100, 'Electronics', 'Samsung', 'SMP54321'),
(3, 'Tablet', 'A versatile tablet', 399.99, 75, 'Electronics', 'Apple', 'TAB67890'),
(4, 'Headphones', 'Noise-cancelling headphones', 199.99, 200, 'Electronics', 'Sony', 'HPH98765'),
(5, 'Smartwatch', 'A smartwatch with various features', 249.99, 150, 'Electronics', 'Garmin', 'SMW43210'),
(6, 'Camera', 'A high-resolution digital camera', 499.99, 80, 'Electronics', 'Canon', 'CAM11111'),
(7, 'Printer', 'A fast and reliable printer', 149.99, 60, 'Electronics', 'Brother', 'PRT22222'),
(8, 'Monitor', 'A 4K ultra HD monitor', 299.99, 90, 'Electronics', 'Dell', 'MON33333'),
(9, 'Router', 'A high-speed wireless router', 129.99, 120, 'Electronics', 'Netgear', 'RTR44444'),
(10, 'External Hard Drive', 'A 2TB external hard drive', 89.99, 110, 'Electronics', 'Seagate', 'EHD55555');


SELECT * FROM Products;

UPDATE Products
SET Price =300,Quantity=91,UpdatedAt =GETDATE() WHERE ProductID =8;



UPDATE Products
SET Brand = 'HP' 
WHERE ProductID =1;



DELETE FROM Products WHERE ProductID =10;


