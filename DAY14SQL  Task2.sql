SElect TOP 10 
C.CustomerName, 
SUM(TotalAmount) AS TotalPurchase FROM dbo.Customers AS C
JOIN dbo.Orders AS O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName
ORDER BY TotalPurchase DESC;