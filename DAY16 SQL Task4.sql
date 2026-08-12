SELECT TOP 10
C.State,
COUNT(OrderID) AS TotalOrders FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
GROUP BY C.State
ORDER BY TotalOrders DESC;