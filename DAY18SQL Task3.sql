SELECT TOP 10
C.CustomerName,
COUNT(O.OrderID) AS DeliveredOrders FROM dbo.Orders AS O
INNER JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerId
INNER JOIN dbo.Shipping AS S ON O.ShippingID = S.ShippingID
WHERE S.DeliveryStatus = 'Delivered'
GROUP BY C.CustomerName
ORDER BY DeliveredOrders DESC;