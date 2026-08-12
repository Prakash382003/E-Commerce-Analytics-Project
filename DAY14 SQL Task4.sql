SELECT TOP 10 P.ProductName,
SUM(O.TotalAmount) As TotalRevenue FROM dbo.Orders O
JOIN dbo.Products P ON O.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY TotalRevenue DESC;