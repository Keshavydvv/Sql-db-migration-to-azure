CREATE DATABASE StudentDemo;
GO
USE StudentDemo;
CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Department NVARCHAR(100)
);
INSERT INTO Students VALUES (1, 'Keshav', 'Computer Science');
