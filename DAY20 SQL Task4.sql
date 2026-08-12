SELECT TOP 10
C.CustomerName,
SUM(O.TotalAmount) AS TotalSpent FROM dbo.Orders AS O
JOIN dbo.customers AS C ON O.CustomerID = C.CustomerID
JOIN dbo.Payments AS PAY ON O.PaymentID = PAY.PaymentID
JOIN dbo.Shipping AS S ON O.ShippingID = S.ShippingID 
WHERE S.DeliveryStatus = 'Delivered'
AND PAY.PaymentMethod = 'UPI'
GROUP BY C.CustomerName
ORDER BY TotalSpent DESC;