SELECT TOP 10
Cat.CategoryName,
SUM(O.TotalAmount) AS TotalRevenue FROM dbo.Orders AS O
JOIN dbo.Products AS P ON O.ProductID = P.ProductID
JOIN dbo.Categories AS Cat ON P.CategoryID = Cat.CategoryID
JOIN dbo.Payments AS PAY ON O.PaymentID = PAY.PaymentID
WHERE PAY.PaymentMethod = 'Credit Card'
GROUP BY Cat.CategoryName
ORDER BY TotalRevenue DESC;s