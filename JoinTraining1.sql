-- Create database

-- CREATE DATABASE JoinPracticeDB;


-- Use database

-- USE JoinPracticeDB;


-- Create Departments table
/*
CREATE TABLE Departments
(
    DepartmentId INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName VARCHAR(100) NOT NULL
);
*/

-- Create Employees table
/*
CREATE TABLE Employees
(
    EmployeeId INT PRIMARY KEY IDENTITY(1,1),
    EmployeeName VARCHAR(100) NOT NULL,
    DepartmentId INT NULL,
    ManagerId INT NULL
);
*/

-- Insert departments
/*
INSERT INTO Departments (DepartmentName)
VALUES ('IT'), ('HR'), ('Marketing'), ('Finance');
*/

-- Insert employees
/*
INSERT INTO Employees (EmployeeName, DepartmentId, ManagerId)
VALUES
('Ali', 1, NULL),
('Rahim', 1, 1),
('Karim', 1, 1),
('Sara', 3, 2),
('Hasan', 3, 2),
('Jamal', NULL, NULL);
*/

-- INNER JOIN: only matching rows
/*
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentId = d.DepartmentId;
*/

-- LEFT JOIN: all employees, even without a department
/*
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentId = d.DepartmentId;
*/

-- RIGHT JOIN: all departments, even without employees
/*
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentId = d.DepartmentId;
*/

-- FULL OUTER JOIN: all rows from both tables
/*
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
FULL OUTER JOIN Departments d ON e.DepartmentId = d.DepartmentId;
*/

-- CROSS JOIN: every employee with every department
/*
SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
CROSS JOIN Departments d;
*/

-- Employees without a department
/*
SELECT e.EmployeeName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentId = d.DepartmentId
WHERE d.DepartmentId IS NULL;
*/

-- Departments without employees
/*
SELECT d.DepartmentName
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentId = e.DepartmentId
WHERE e.EmployeeId IS NULL;
*/

-- SELF JOIN: employee and their manager
/*
SELECT e.EmployeeName AS Employee, m.EmployeeName AS Manager
FROM Employees e
LEFT JOIN Employees m ON e.ManagerId = m.EmployeeId;
*/