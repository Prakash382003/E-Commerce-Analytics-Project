SELECT TOP 10
P.ProductName,
C.CategoryName,
COUNT(O.OrderID) AS TotalOrders FROM dbo.Products AS P
JOIN dbo.Categories AS C ON P.CategoryID = C.CategoryID
JOIN dbo.Orders AS O ON P.ProductID = O.ProductID
GROUP BY
P.ProductName,
C.CategoryName
Order BY TotalOrders DESC;