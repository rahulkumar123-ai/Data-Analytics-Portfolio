CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);
INSERT INTO Products (ProductID, ProductName, Category, Price, Stock) VALUES
(1, 'Laptop', 'Electronics', 800.00, 50),
(2, 'Smartphone', 'Electronics', 600.00, 30),
(3, 'Desk Chair', 'Furniture', 120.00, 100),
(4, 'Table', 'Furniture', 200.00, 20),
(5, 'Notebook', 'Stationery', 5.00, 500),
(6, 'Pen', 'Stationery', 2.00, 1000);
SELECT * FROM Products;

Select * from Products where Category IN ('Electronics', 'Furniture');

Select * from Products where Price Between 100 AND 800;
SELECT * FROM Products WHERE Stock BETWEEN 50 AND 500;

SELECT * FROM Products WHERE ProductName LIKE '%Pen%';

SELECT * FROM Products WHERE ProductName LIKE 'S%';

SELECT * FROM Products WHERE Category IN ('Stationery', 'Furniture') AND Price BETWEEN 100 AND 300;

 SELECT * FROM Products WHERE Price BETWEEN 1 AND 10 AND ProductName LIKE '%o%';
