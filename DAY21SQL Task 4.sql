SELECT TOP 10
CAT.CategoryName,
COUNT(DISTINCT O.CustomerID) AS UniqueCustomers FROM dbo.Orders AS O
JOIN dbo.Products AS P ON O.ProductID = P.ProductID
JOIN dbo.Categories AS CAT ON P.CategoryID = CAT.CategoryID 
GROUP BY CAT.CategoryName
ORDER BY UniqueCustomers DESC;