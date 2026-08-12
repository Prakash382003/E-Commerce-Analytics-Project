SELECT Customers.CustomerName ,Customers.State,Orders.OrderID
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID;