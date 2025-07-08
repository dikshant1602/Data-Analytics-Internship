-- Create a new database named 'bcatraining'
CREATE DATABASE bcatraining;

-- Switch to use the 'bcatraining' database
USE bcatraining;

-- Create Employees12 Table
CREATE TABLE Employees12 (
    EmployeeID INT PRIMARY KEY,      -- Unique ID for each employee
    Name VARCHAR(50),                -- Employee's name
    DepartmentID INT                 -- ID of the department the employee belongs to
);

-- Insert sample data into Employees12 table
INSERT INTO Employees12 (EmployeeID, Name, DepartmentID)
VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', NULL),   -- Employee with no department assigned yet
(4, 'Diana', 101),
(5, 'Eva', 103);

-- View all rows in Employees12 table
SELECT * FROM Employees12;


-- Create Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,    -- Unique ID for each department
    DepartmentName VARCHAR(50)       -- Name of the department
);


-- Create Projects Table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,       -- Unique ID for each project
    ProjectName VARCHAR(50),         -- Name of the project
    EmployeeID INT                   -- ID of the employee assigned to the project
);

-- Insert sample data into Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing');

-- Insert sample data into Projects table
INSERT INTO Projects (ProjectID, ProjectName, EmployeeID)
VALUES
(1001, 'Project Alpha', 1),
(1002, 'Project Beta', 1),
(1003, 'Project Gamma', 2),
(1004, 'Project Delta', 5),
(1005, 'Project Epsilon', NULL); -- Project with no employee assigned

-- Select all rows from each table
SELECT * FROM Employees12;
SELECT * FROM Departments;
SELECT * FROM Projects;


-- Select employees with EmployeeID = 4
SELECT * FROM Employees12 WHERE EmployeeID = 4;

-- Get the sum of all EmployeeIDs
SELECT SUM(EmployeeID) FROM Employees12;

-- (Duplicate sum query — same as above)
SELECT SUM(EmployeeID) FROM Employees12;

-- Get only the EmployeeID column
SELECT EmployeeID FROM Employees12;

-- Count total number of EmployeeIDs
SELECT COUNT(EmployeeID) FROM Employees12;

-- Insert a new employee with DepartmentID = 104
INSERT INTO Employees12 (EmployeeID, Name, DepartmentID)
VALUES
(6, 'Alice', 104);

-- View all rows in Employees12 after inserting new employee
SELECT * FROM Employees12;

-- Count unique employee names (distinct names)
SELECT COUNT(DISTINCT Name) FROM Employees12;

-- Select EmployeeID with an alias 'newcolumn'
SELECT EmployeeID AS newcolumn FROM Employees12;
