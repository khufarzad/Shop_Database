-- Create Database
CREATE DATABASE YodaShop;

-- Use a Database
USE YodaShop;

-- Create Customers Table
CREATE TABLE Customers(
	Customer_ID INT NOT NULL,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    PRIMARY KEY(Customer_ID)
);

-- Create Orders table
CREATE TABLE Orders(
	Order_ID INT NOT NULL,
    Product VARCHAR(30),
    Customer_ID INT,
    PRIMARY KEY (Order_ID),
    FOREIGN KEY (Customer_ID)
		REFERENCES Customers(Customer_ID)
);