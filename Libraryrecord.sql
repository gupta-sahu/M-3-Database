CREATE DATABASE libraryDB;
SHOW DATABASES;
USE libraryDB;
CREATE TABLE Books (
BookID INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(255) NOT NULL,
Author VARCHAR(255) NOT NULL,
ISBN VARCHAR(20) UNIQUE,
PublishedYear YEAR
);

CREATE TABLE Members (
MemberID INT AUTO_INCREMENT PRIMARY KEY,
First_name VARCHAR(255) NOT NULL,
Last_name VARCHAR(255) NOT NULL,
Emailid VARCHAR(255) UNIQUE,
MembershipDate DATE
);

CREATE TABLE Transactions (
TransactionID INT AUTO_INCREMENT PRIMARY KEY,
MemberID INT,
BookID INT,
TransactionDate DATE,
ReturnDate DATE,
FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
                                                                                                                                                                                                           ;
CREATE VIEW ActiveLoans AS 
SELECT
TransactionID,
MemberID,
BookID,
TransactionDate,
CASE
WHEN ReturnDate IS NULL THEN 'Not Returned'
ELSE ReturnDAte
END AS ReturnStatus
FROM Transactions;
SELECT * FROM ActiveLoans;
CREATE INDEX idx_title ON Books (Title);
SHOW INDEX FROM Books;
CREATE SCHEMA Inventory;
CREATE SCHEMA MemberManagement;





 