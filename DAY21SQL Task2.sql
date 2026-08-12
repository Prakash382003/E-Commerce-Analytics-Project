SELECT TOP 10
P.ProductName,
SUM(O.TotalAmount) AS TotalRevenue FROM dbo.Orders AS O
JOIN dbo.Products AS P ON O.ProductID = P.ProductID
JOIN dbo.Payments AS PAY ON O.PaymentID = PAY.PaymentID
WHERE PaymentMethod ='UPI'
GROUP BY P.ProductName
ORDER BY TotalRevenue DESC;