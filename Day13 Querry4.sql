SELECT TOP 10 C.CustomerID, C.CustomerName, C.State,
COUNT(O.OrderID) AS TotalOrders FROM dbo.Customers As C
JOIN dbo.Orders AS O ON C.CustomerID = O.CustomerID 
GROUP BY C.CustomerID, C.CustomerName, C.State
ORDER BY TotalOrders DESC;