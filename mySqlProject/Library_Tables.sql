USE CJLibrary

SELECT * FROM Book

DELETE Book

CREATE TABLE Book
(BookId int PRIMARY KEY,
Title VARCHAR (50) NOT NULL,
PublishersName VARCHAR (50) NOT NULL)


CREATE TABLE Book_Authors
(BookId int NOT NULL,
AuthorName VARCHAR (50) NOT NULL)


CREATE TABLE Publishers
(Name VARCHAR (75) NOT NULL,
Address VARCHAR (100) NOT NULL,
Phone nVarchar (12) NOT NULL)


CREATE TABLE Book_Copies
(BookId int NOT NULL,
BranchId NVARCHAR (10) NOT NULL,
No_Of_Copies nvarchar (2) NOT NULL)

CREATE TABLE Book_Loans
(BookId int NOT NULL,
BranchId NVARCHAR (10) NOT NULL,
CardNo NVARCHAR (20) NOT NULL,
DateOut NVARCHAR (10) NOT NULL,
DueDate NVARCHAR (10) NOT NULL)

DROP TABLE Book_Loans

CREATE TABLE Library_Branch
(BranchId NVARCHAR (10) NOT NULL,
BranchName VARCHAR (50) NOT NULL,
Address VARCHAR (100) NOT NULL)

CREATE TABLE Borrower
(CardNo nvarchar (30) NOT NULL,
Name VARCHAR (50) NOT NULL,
Address VARCHAR (100) NOT NULL,
Phone NVARCHAR (13) NOT NULL)