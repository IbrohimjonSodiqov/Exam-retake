CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Email TEXT UNIQUE,
    Address TEXT
);

CREATE TABLE Products (
    ProductID INTEGER PRIMARY KEY,
    ProductName TEXT NOT NULL,
    Price REAL,
    Stock INTEGER
);

CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    OrderDate TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderItems (
    OrderItemID INTEGER PRIMARY KEY,
    OrderID INTEGER,
    ProductID INTEGER,
    Quantity INTEGER,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Payments (
    PaymentID INTEGER PRIMARY KEY,
    OrderID INTEGER,
    Amount REAL,
    PaymentMethod TEXT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);