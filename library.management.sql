-- Create Database
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- Create Tables
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Price DECIMAL(6,2)
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    JoinDate DATE
);

CREATE TABLE IssuedBooks (
    IssueID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    IssueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- Insert Data
INSERT INTO Books VALUES
(1, 'The Alchemist', 'Paulo Coelho', 'Fiction', 300.00),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 450.00),
(3, '1984', 'George Orwell', 'Dystopian', 250.00);

INSERT INTO Members VALUES
(1, 'Karan S', 'karan@example.com', '2024-01-15'),
(2, 'Amit Kumar', 'amit@example.com', '2024-02-10');

INSERT INTO IssuedBooks VALUES
(1, 1, 1, '2024-03-01', '2024-03-15'),
(2, 2, 2, '2024-03-05', NULL);

-- Queries
-- 1. List all books
SELECT * FROM Books;

-- 2. Show all issued books with member name
SELECT IssuedBooks.IssueID, Books.Title, Members.Name, IssuedBooks.IssueDate, IssuedBooks.ReturnDate
FROM IssuedBooks
JOIN Books ON IssuedBooks.BookID = Books.BookID
JOIN Members ON IssuedBooks.MemberID = Members.MemberID;

-- 3. Count total books
SELECT COUNT(*) AS TotalBooks FROM Books;

-- 4. Find overdue books
SELECT Books.Title, Members.Name
FROM IssuedBooks
JOIN Books ON IssuedBooks.BookID = Books.BookID
JOIN Members ON IssuedBooks.MemberID = Members.MemberID
WHERE IssuedBooks.ReturnDate IS NULL;
