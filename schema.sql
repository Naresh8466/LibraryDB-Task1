CREATE DATABASE LibraryDB;
GO

USE LibraryDB;
GO

CREATE TABLE Authors (
    AuthorID INT IDENTITY(1,1) PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL
);

CREATE TABLE Books (
    BookID INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(200) NOT NULL,
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Members (
    MemberID INT IDENTITY(1,1) PRIMARY KEY,
    MemberName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE BorrowedBooks (
    BorrowID INT IDENTITY(1,1) PRIMARY KEY,
    MemberID INT,
    BookID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
---------------------------------------------------------------------------
USE LibraryDB
GO
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES;