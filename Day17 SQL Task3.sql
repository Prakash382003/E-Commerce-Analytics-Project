SELECT TOP 10
C.CategoryName,
SUM(O.TotalAmount) AS TotalRevenue FROM dbo.Orders AS O
INNER JOIN dbo.Products AS P ON O.ProductID = P.ProductID
INNER JOIN dbo.Categories AS C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName
ORDER BY TotalRevenue DESC;