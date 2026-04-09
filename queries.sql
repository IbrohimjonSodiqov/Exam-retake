SELECT c.name, p.name, oi.Quantity
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderItems oi ON o.OrderID = oi.OrderID
JOIN Products p ON oi.ProductID = p.ProductID


SELECT ProductID, SUM(Quantity) AS TotalSold
FROM OrderItems
GROUP BY ProductID;

SELECT SUM(Amount) AS TotalRevenue
FROM Payments;


UPDATE Products
SET Stock = Stock - 1
WHERE ProductID = 1;

DELETE FROM Customers
WHERE CustomerID = 3;