CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Employees (EmpID, EmpName, DepartmentID) VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 103),
(4, 'Diana', NULL),
(5, 'Eve', 101);


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DeptName, Location) VALUES
(101, 'HR', 'New York'),
(102, 'IT', 'San Francisco'),
(103, 'Finance', 'Chicago'),
(104, 'Sales', 'Boston');


-- 1a
SELECT * FROM Employees;

-- 1b
SELECT * FROM Departments;

-- 2a Inner Join
SELECT E.EmpID, E.EmpName, D.DeptName
FROM Employees E
INNER JOIN Departments D
    ON E.DepartmentID = D.DepartmentID;

-- 2b Left Join
SELECT E.EmpID, E.EmpName, D.DeptName
FROM Employees E
LEFT JOIN Departments D
    ON E.DepartmentID = D.DepartmentID;

-- 2c Right Join
SELECT D.DepartmentID, D.DeptName, E.EmpName
FROM Employees E
RIGHT JOIN Departments D
    ON E.DepartmentID = D.DepartmentID;

-- 2d Full Outer Join equivalent for MySQL
SELECT E.EmpID, E.EmpName, D.DeptName
FROM Employees E
LEFT JOIN Departments D
    ON E.DepartmentID = D.DepartmentID

UNION

SELECT E.EmpID, E.EmpName, D.DeptName
FROM Employees E
RIGHT JOIN Departments D
    ON E.DepartmentID = D.DepartmentID;

-- 2e Cross Join
SELECT E.EmpName, D.DeptName
FROM Employees E
CROSS JOIN Departments D;

-- 2f Union All
SELECT EmpName AS Name
FROM Employees
UNION ALL
SELECT DeptName
FROM Departments;

-- 2g Intersect equivalent for MySQL
SELECT DISTINCT E.DepartmentID
FROM Employees E
INNER JOIN Departments D
    ON E.DepartmentID = D.DepartmentID;

-- 2h Except equivalent for MySQL
SELECT D.DepartmentID
FROM Departments D
LEFT JOIN Employees E
    ON D.DepartmentID = E.DepartmentID
WHERE E.DepartmentID IS NULL;
