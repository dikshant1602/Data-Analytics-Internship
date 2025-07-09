-- Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT
);

-- Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Projects Table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    EmployeeID INT
);

-- Insert data into Employees
INSERT INTO Employees (EmployeeID, Name, DepartmentID)
VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', NULL),
(4, 'Diana', 101),
(5, 'Eva', 103);

-- Insert data into Departments
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing');

-- Insert data into Projects
INSERT INTO Projects (ProjectID, ProjectName, EmployeeID)
VALUES
(1001, 'Project Alpha', 1),
(1002, 'Project Beta', 1),
(1003, 'Project Gamma', 2),
(1004, 'Project Delta', 5),
(1005, 'Project Epsilon', NULL);

select * from Employees
select * from Departments
select * from Projects

--INNER JOIN: USED TO JOIN MATCHING VALUES BETWEEN TWO TABLE
--To run Name from Employee Table and DepartmentName from Department Table
--We can also run this query by just using join.
SELECT 
    Employees.Name,
    Departments.DepartmentName
FROM 
    Employees
INNER JOIN 
    Departments
ON 
    Employees.DepartmentID = Departments.DepartmentID;


--LEFT JOIN: Returns all rows from the left table, and the matching rows from the right table. If there’s no match, NULLs are returned for right side columns.
SELECT 
    Employees.Name,
    Departments.DepartmentName
FROM 
    Employees
LEFT JOIN 
    Departments
ON 
    Employees.DepartmentID = Departments.DepartmentID;


--RIGHT JOIN: Returns all rows from the right table, and the matching rows from the left table. If there’s no match, NULLs are returned for LEFT side columns.
SELECT 
    Employees.Name,
    Departments.DepartmentName
FROM 
    Employees
RIGHT JOIN 
    Departments
ON 
    Employees.DepartmentID = Departments.DepartmentID;


--FULL OUTER JOIN: Combines LEFT and RIGHT JOIN. Shows all rows from both tables — matching rows are joined, unmatched rows get NULLs.
SELECT 
    Employees.Name,
    Departments.DepartmentName
FROM 
    Employees
FULL OUTER JOIN 
    Departments
ON 
    Employees.DepartmentID = Departments.DepartmentID;


--CROSS JOIN: A CROSS JOIN returns the Cartesian product of two tables. Every row in the first table is combined with every row in the second table.
SELECT 
    Employees.Name,
    Departments.DepartmentName
FROM 
    Employees
CROSS JOIN 
    Departments


--MULTIPLE JOINS
SELECT 
    Employees.Name, 
    Departments.DepartmentName, 
    Projects.ProjectName
FROM 
    Employees
LEFT JOIN 
    Departments 
ON 
    Employees.DepartmentID = Departments.DepartmentID
LEFT JOIN 
    Projects 
ON 
    Employees.EmployeeID = Projects.EmployeeID;