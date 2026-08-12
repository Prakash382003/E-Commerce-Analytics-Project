SELECT TOP 10
Cat.CategoryName,
SUM(O.Quantity) AS TotalQuantitySold FROM dbo.Orders AS O
JOIN dbo.Products AS P ON O.ProductID = P.ProductID
JOIN dbo.Categories AS Cat ON P.CategoryID = Cat.CategoryID
GROUP BY Cat.CategoryName
ORDER BY TotalQuantitySold DESC;