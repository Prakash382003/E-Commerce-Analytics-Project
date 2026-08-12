SELECT TOP 10 C.CustomerName,
COUNT(ProductID)AS TotalProducts FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
ORDER BY TotalProducts DESC;