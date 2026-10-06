USE ShopDB

DROP Table Users


CREATE TABLE Users
(
    Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE UserProfiles
(
    Id INT PRIMARY KEY,
    UserId INT UNIQUE NOT NULL,

    FOREIGN KEY (UserId)
        REFERENCES Users(Id)
);

CREATE TABLE Orders
(
    Id INT PRIMARY KEY,
    UserId INT NOT NULL,
    Amount DECIMAL(10,2),

    FOREIGN KEY (UserId)
        REFERENCES Users(Id)
);


CREATE TABLE Students
(
    Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE Courses
(
    Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE StudentCourses
(
    StudentId INT,
    CourseId INT,

    PRIMARY KEY (StudentId, CourseId),

    FOREIGN KEY (StudentId)
        REFERENCES Students(Id),

    FOREIGN KEY (CourseId)
        REFERENCES Courses(Id)
);

CREATE TABLE Employees
(
    Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    ManagerId INT NULL,

    FOREIGN KEY (ManagerId)
        REFERENCES Employees(Id)
);