CREATE DATABASE ShopDB;

USE ShopDB;

CREATE DATABASE Module2Test;

ALTER DATABASE Module2Test
    SET READ_ONLY;

DROP DATABASE Module2Test;

SELECT Name
FROM sys.databases;

CREATE TABLE Users(
    Id    INT           PRIMARY KEY,
    Name  VARCHAR (100) NOT NULL,
    Email VARCHAR (150) UNIQUE
);

SELECT * FROM Users;

INSERT  INTO Users (
    Id,
    Name,
    Email
)
VALUES             
    (1, 'Sazzadul', 'PSazzadul@gmial.com'),
    (2, 'John', 'PJhon@gmial.com'),
    (3, 'Kas', 'Kashem112@gmial.com');

SELECT *
FROM   Users
WHERE  Name = 'Sazzadul';

SELECT Name
FROM   sys.databases;

CREATE TABLE Products (
    Id    INT             PRIMARY KEY,
    Name  VARCHAR (100)  ,
    Price DECIMAL (10, 2),
    Stock INT            
);

SELECT *
FROM   Products;

ALTER TABLE Users
    ADD Age INT;

ALTER TABLE Users
    ADD Phone VARCHAR (100);

ALTER TABLE Users ALTER COLUMN Name VARCHAR (150) NOT NULL;

ALTER TABLE Users DROP COLUMN Phone;

DROP TABLE Users;

TRUNCATE TABLE Users;

SELECT * FROM Users;

SELECT Name, Email FROM Users;

SELECT * FROM Users
ORDER BY Id ASC;

SELECT TOP 2 * FROM Users
ORDER BY Name;

DROP TABLE Users;

CREATE TABLE Users (
    Id       INT PRIMARY KEY,
    Name     NVARCHAR (100) NOT NULL,
    Email    NVARCHAR (150) UNIQUE,
    Age      INT,
    City     NVARCHAR (50),
    Phone    VARCHAR (20),
    IsActive BIT           
);

INSERT  INTO Users (
    Id,
    Name,
    Email,
    Age,
    City,
    Phone,
    IsActive
)
VALUES             
    (1, 'Sazzadul Islam', 'Psazzzadul@gmail.com', 25, 'Dhaka', '01711111111', 1),
    (2, 'Sarah Khan', 'sarah@example.com', 32, 'Chittagong', NULL, 1),
    (3, 'David Brown', 'david@example.com', 17, 'Dhaka', '01733333333', 0),
    (4, 'Michael Lee', 'michael@example.com', 45, 'Sylhet', NULL, 1),
    (5, 'Emily Wilson', 'emily@example.com', 28, 'Dhaka', '01755555555', 1),
    (6, 'Robert Khan', 'robert@example.com', 19, 'Rajshahi', NULL, 0),
    (7, 'Jessica Smith', 'jessica@example.com', 36, 'Sylhet', '01777777777', 1),
    (8, 'Daniel Ahmed', 'daniel@example.com', 22, 'Dhaka', '01788888888', 1),
    (9, 'Olivia Brown', 'olivia@example.com', 16, 'Khulna', NULL, 0),
    (10, 'James Wilson', 'james@example.com', 41, 'Chittagong', '01799999999', 1);

SELECT *
FROM   Users;

SELECT *
FROM   Users
--WHERE Age <= 22
WHERE  Age >= 22;

SELECT *
FROM   Users
WHERE  Age <= 22
       AND City = 'Dhaka';

SELECT *
FROM   Users
WHERE  City = 'Dhaka'
       OR City = 'Sylhet';

SELECT *
FROM   Users
WHERE  NOT City = 'Dhaka';

SELECT *
FROM   Users
WHERE  City IN ('Dhaka', 'Rajshahi', 'Sylhet');

SELECT *
FROM   Users
WHERE  Age BETWEEN 18 AND 30;

SELECT *
FROM Users
--WHERE Name LIKE 'John%';
--WHERE Name LIKE '%son';
WHERE  Name LIKE '%w%';
--WHERE Name LIKE '_ohn';

SELECT *
FROM   Users
WHERE  NOT phone IS NULL;

--select COUNT(*) AS TotlaUsers
--from Users

SELECT COUNT(Phone) AS UsersWithPhone
FROM Users;

SELECT SUM(Age) AS TotalAge From Users
SELECT AVG(Age) AS TotalAge From Users
SELECT MIN(Age) AS TotalAge From Users
SELECT MAX(Age) AS TotalAge From Users

SELECt City, Count(*) as UserCount
from Users
Group By City 

SELECT City, COUNT(*) AS UserCount
FROM Users
GROUP BY City
HAVING COUNT(*) >= 2;