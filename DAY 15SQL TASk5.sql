SELECT TOP 10
P.ProductName,
COUNT(R.ReturnID) AS TotalReturns FROM dbo.Products AS P
JOIN dbo.Orders AS O ON P.ProductID = O.ProductID
JOIN dbo.Returns AS R ON O.OrderID = R.OrderID
GROUP BY P.ProductName
ORDER BY TotalReturns DESC;