SELECT TOP 10
C.City,
COUNT(O.OrderID) AS TotalDeliveredOrders FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
JOIN dbo.Payments AS P ON O.PaymentID = P.PaymentID
WHERE OrderStatus = 'Delivered'
GROUP BY C.City
ORDER BY TotalDeliveredOrders DESC;