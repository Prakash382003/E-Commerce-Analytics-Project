SELECT C.CategoryName,
SUM(O.Quantity * O.UnitPrice) AS TotalRevenue FROM dbo.Orders AS O
JOIN dbo.Products P ON O.ProductID = P.ProductID
JOIN dbo.Categories C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName
ORDER BY TotalRevenue DESC;