SELECT TOP 10
C.City, SUM(TotalAmount) AS TotalRevenue FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON C.CustomerID = O.CustomerID
GROUP BY C.City
ORDER BY TotalRevenue DESC;