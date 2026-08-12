SELECT TOP 10
C.CustomerName,
COUNT(O.OrderID) AS TotalOrders FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
Order BY TotalOrders DESC;