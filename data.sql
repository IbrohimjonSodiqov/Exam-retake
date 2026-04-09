INSERT INTO Customers VALUES
(1, 'John', 'john@gmail.com', 'Berlin'),
(2, 'Sarah', 'sarah@gmail.com', 'Potsdam'),
(3, 'Mike', 'mike@gmail.com', 'Magdeburg');

INSERT INTO Products VALUES
(1, 'Laptop', 999.99, 10),
(2, 'Phone', 599.99, 20),
(3, 'Headphones', 199.99, 15);

INSERT INTO Orders VALUES
(1, 1, '2026-01-10'),
(2, 2, '2026-01-11');

INSERT INTO OrderItems VALUES
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 2, 2, 1);

INSERT INTO Payments VALUES
(1, 1, 1399.97, 'Card'),
(2, 2, 599.99, 'PayPal');