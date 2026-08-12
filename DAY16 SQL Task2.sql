SELECT TOP 10
C.CustomerName,
COUNT(O.OrderID) AS TotalOrders FROM dbo.Orders AS O
JOIN dbo.Customers As C ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName
ORDER BY TotalOrders DESC;