SELECT TOP 10
C.CustomerName,
SUM(O.TotalAmount) AS TotalRevenue FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
JOIN dbo.Payments AS PAY ON O.OrderID = PAY.OrderID
JOIN dbo.Shipping AS S ON O.ShippingID = S.ShippingID
WHERE PaymentMethod = 'Credit Card'
AND OrderStatus = 'Delivered'
GROUP BY C.CustomerName
ORDER BY TotalRevenue DESC;