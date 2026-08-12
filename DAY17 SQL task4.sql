SELECT TOP 10
C.CustomerName,
COUNT(DISTINCT P.PaymentMethod) AS DifferentPaymentMethods FROM dbo.Customers AS C
INNER JOIN dbo.Orders AS O ON C.CustomerID = O.CustomerID
INNER JOIN dbo.Payments AS P ON O.OrderID = P.OrderID
GROUP BY C.CustomerName
ORDER BY DifferentPaymentMethods DESC;