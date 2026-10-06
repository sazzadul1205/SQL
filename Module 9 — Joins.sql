CREATE DATABASE JoinPracticeDB;
USE JoinPracticeDB;

CREATE TABLE Users
(
    Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(50)
);

INSERT INTO Users (Id, Name, City)
VALUES
    (1, 'John', 'Dhaka'),
    (2, 'Sarah', 'Chittagong'),
    (3, 'David', 'Sylhet'),
    (4, 'Emily', 'Dhaka'),
    (5, 'Michael', 'Rajshahi'),
    (6, 'Jessica', 'Khulna');

CREATE TABLE Orders
(
    Id INT PRIMARY KEY,
    UserId INT NOT NULL,
    OrderDate DATE,
    Amount DECIMAL(10,2),

    FOREIGN KEY (UserId)
        REFERENCES Users(Id)
);

INSERT INTO Orders (Id, UserId, OrderDate, Amount)
VALUES
    (101, 1, '2026-10-01', 250.00),
    (102, 1, '2026-10-03', 150.00),
    (103, 2, '2026-10-04', 500.00),
    (104, 3, '2026-10-05', 100.00),
    (105, 4, '2026-10-06', 750.00),
    (106, 5, '2026-10-06', 300.00);

CREATE TABLE Categories
(
    Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

INSERT INTO Categories (Id, Name)
VALUES
    (1, 'Electronics'),
    (2, 'Books'),
    (3, 'Clothing'),
    (4, 'Accessories');