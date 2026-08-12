SELECT TOP 10
C.CustomerName,
SUM(O.TotalAmount) AS TotalSpent FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
JOIN dbo.Payments AS P ON O.PaymentID = P.PaymentID
JOIN dbo.Shipping AS S ON O.ShippingID = S.ShippingID
WHERE P.PaymentMethod = 'UPI'
AND S.DeliveryStatus = 'Delivered'
GROUP BY C.CustomerName
ORDER BY TotalSpent DESC;