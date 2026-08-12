SELECT TOP 10
C.CustomerName,
COUNT(DISTINCT O.OrderID) AS TotalUniqueOrders FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
ORDER BY TotalUniqueOrders DESC;