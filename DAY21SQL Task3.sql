SELECT TOP 10
C.State,
COUNT(O.OrderID) AS DeliveredOrders FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
JOIN dbo.Shipping AS S ON O.ShippingID = S.ShippingID
WHERE OrderStatus = 'Delivered'
GROUP BY C.State
ORDER BY DeliveredOrders DESC;