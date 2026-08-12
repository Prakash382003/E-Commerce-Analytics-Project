SELECT TOP 10
P.ProductName,
COUNT(O.OrderID) AS TotalOrders FROM dbo.Orders AS O
INNER JOIN dbo.Products AS P ON O.ProductID = P.ProductID 
GROUP BY P.ProductName
ORDER BY TotalOrders DESC;