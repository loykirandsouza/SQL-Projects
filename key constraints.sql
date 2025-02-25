create database Id_card;
use Id_card;



CREATE TABLE Aadhar
 ( UID BIGINT PRIMARY KEY, 
 FirstName VARCHAR(50),
 LastName VARCHAR(50), 
 PhoneNumber VARCHAR(15), 
 Address VARCHAR(255)
);
INSERT INTO Aadhar (UID, FirstName, LastName, PhoneNumber, Address) 
VALUES
(123456789019, 'John', 'Doe', '1234567890',  '123 Main St'),
(123456789015, 'Jane', 'Smith', '9876543210', '456 Oak St'), 
(123456789020, 'Bob', 'Johnson', '5551234567', '789 Pine St'),
(123456784569, 'Bob', 'Johnson', '5551234567', '789 Pine St');
Select * from Aadhar;


Select * from Aadhar;


CREATE TABLE Users
(UserID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100) UNIQUE

);
INSERT INTO Users (UserID, FirstName, LastName, Email)
VALUES
(101, 'Alice', 'Johnson', 'alice@example.com'),
(102, 'Bob', 'Smith', 'bob@example.com'),
(103, 'Charlie', 'Brown', 'charlie@example.com');

CREATE TABLE Accounts
(AccountID INT PRIMARY KEY,
UserID INT,
AccountType VARCHAR(20),
Balance DECIMAL(10, 2),
FOREIGN KEY (UserID) REFERENCES Users (UserID)
);
INSERT INTO Accounts (AccountID, UserID, AccountType, Balance)
 VALUES
(201, 101, 'Savings', 1000.00),
(202, 102, 'Checking', 500.50),
(203, 103, 'Savings', 2000.25);

select * from Users;
select * from Accounts;


CREATE TABLE Customers 
(CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(50),
PhoneNumber VARCHAR(10) CHECK (LENGTH(PhoneNumber) = 10)
);
INSERT INTO Customers (CustomerID, CustomerName, PhoneNumber)
VALUES
(1, 'John Doe', '1234567890'),
(2, 'Jane Smith', '9876543210'),
(3, 'Bob Johnson', '5551112233'),
(4, 'Alice Brown', '9998887777'),
(5, 'Alice Brownn', '9998887778');
Select * From Customers;


-- Create Customers table with a unique constraint on Phone Number
CREATE TABLE Customerss
 ( CustomerID INT PRIMARY KEY, 
 CustomerName VARCHAR(50), 
 PhoneNumber VARCHAR(10) UNIQUE
);

INSERT INTO Customerss (CustomerID, CustomerName, PhoneNumber) VALUES
(301, 'Customer1', '1234567890'), 
(302, 'Customer2', '9876543210'), 
(303, 'Customer3', '5551234567');

select * from Customerss;

-- not nuull

CREATE TABLE Custome
( CustomerID INT PRIMARY KEY, 
CustomerName VARCHAR(50), 
PhoneNumber VARCHAR(10) NOT NULL
);
INSERT INTO Custome(CustomerID, CustomerName, PhoneNumber) 
VALUES
(401, 'Client1', '1234567890'),
 (402, 'Client2', '9876543210'), 
 (403, 'Client3', '5551234567');
Select * From Customers;

-- Default

CREATE TABLE Custo (
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(50),
 CompanyName VARCHAR(50) DEFAULT 'Google');
INSERT INTO Custo (CustomerID, CustomerName)
VALUES
(501, 'Partner1'),
(502, 'Partner2'),
(503, 'Partner3');

SELECT * FROM CUSTOMERS;