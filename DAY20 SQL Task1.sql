SELECT
Cat.CategoryName,
SUM(O.TotalAmount) AS TotalRevenue FROM dbo.Orders AS O
INNER JOIN dbo.Products AS P ON O.ProductID = P.ProductID
INNER JOIN dbo.Categories AS Cat ON P.CategoryID = Cat.CategoryID
GROUP BY Cat.CategoryName
HAVING SUM(TotalAmount) > 100000000
ORDER BY TotalRevenue DESC;