SELECT TOP 10
C.CustomerName,
SUM(O.TotalAmount) AS TotalRevenue FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
JOIN dbo.Payments AS P ON O.PaymentID = P.PaymentID
WHERE PaymentMethod = 'COD'
GROUP BY C.CustomerName
ORDER BY TotalRevenue DESC;