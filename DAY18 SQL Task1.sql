SELECT TOP 10
C.CustomerName,
AVG(O.TotalAmount) AS AverageOrderValue FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
ORDER BY AverageOrderValue DESC;