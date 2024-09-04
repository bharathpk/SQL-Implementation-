create database studentdb;
show databases;
use studentdb;
CREATE TABLE Customer (
    Customer_Id INT NOT NULL,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Post_code VARCHAR(7) NOT NULL,
    PhoneNumber INT NOT NULL,
    PRIMARY KEY (Customer_Id)
);
CREATE TABLE Order_ (
    Order_Number INT NOT NULL,
    Customer_Id INT NOT NULL,
    order_date DATE NOT NULL,
    Del_Street VARCHAR(50),
    Del_City VARCHAR(50) NOT NULL,
    Del_County VARCHAR(50),
    Del_Post_code VARCHAR(50) NOT NULL,
    Shipped_Date VARCHAR(50) NOT NULL,
    PRIMARY KEY (Order_Number),
    FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id)
);
CREATE TABLE Product (
    Product_Id INT NOT NULL,
    Quantity INT NOT NULL,
    Product_Type VARCHAR(10),
    PRIMARY KEY (Product_Id)
);
CREATE TABLE Order_Details (
    Order_Number INT NOT NULL,
    Product_Id INT NOT NULL,
    PRIMARY KEY (Order_Number, Product_Id),
    FOREIGN KEY (Order_Number) REFERENCES Order_(Order_Number),
    FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);








