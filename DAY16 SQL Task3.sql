SELECT C.CategoryName,
AVG(TotalAmount) AS AveragePrice FROM dbo.Orders AS O
JOIN dbo.Products AS P ON O.ProductID = P.ProductID
JOIN dbo.Categories AS C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName
ORDER BY AveragePrice DESC;