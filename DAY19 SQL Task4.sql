SELECT TOP 10
P.ProductName,
SUM(O.TotalAmount) AS TotalRevenue FROM dbo.Orders AS O
JOIN dbo.Products AS P ON O.ProductID = P.ProductID
JOIN dbo.Shipping AS S ON O.ShippingID = S.ShippingID
WHERE S.DelivesryStatus = 'Delivered'
GROUP BY P.ProductName
ORDER BY TotalRevenue DESC;s