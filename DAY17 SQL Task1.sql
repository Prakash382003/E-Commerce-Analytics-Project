SELECT TOP 10
C.CustomerName,
SUM(O.TotalAmount) AS TotalRevenue FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON c.CustomerID = O.CustomerID
GROUP BY C.CustomerName
ORDER BY TotalRevenue DESC;