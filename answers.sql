-- QUESTION 1, CREATING CUSTOMERS TABLE
 CREATE TABLE Customers (
CustomerID INT PRIMARY KEY AUTO_INCREMENT,
CustomerName VARCHAR(30) NOT NULL
);
-- CREATING ORDERS TABLE
CREATE TABLE Orders (
orderID INT PRIMARY KEY,
customerID INT,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);	
-- CREATING PRODUCTS TABLE
CREATE TABLE Products (
ProductID INT PRIMARY KEY AUTO_INCREMENT,
ProductName VARCHAR(50) NOT NULL
);
-- CREATING Orderproducts TABLE
CREATE TABLE Orderproducts (
OrderID INT,
ProductID INT,
PRIMARY KEY (OrderID, ProductID),
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- INSERTING DATA INTO CUSTOMERS TABLE
INSERT INTO Customers (CustomerName)
Values ('John Doe'), ('Jane Smith'), ('Emily Clark');

-- INSERTING DATA INTO ORDERS TABLE
INSERT INTO Orders (OrderID, CustomerID)
VALUES (101,1), (102,2), (103,3);

-- INSERTING DATA INTO PRODUCTS TABLE
INSERT INTO Products (ProductName)
VALUES ('Laptop'), ('Mouse'), ('Table'), ('Keyboard'), ('Phone');

-- INSERTING DATA INTO Orderproducts TABLE
INSERT INTO OrderProducts (OrderID, ProductID)
VALUES (101,1), (101,2), (102, 3), (102, 4), (102,2), (103,5);

-- QUESTION 2
CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
INSERT INTO OrderDetails (OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
