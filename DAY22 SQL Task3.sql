SELECT 
P.PaymentMethod,
COUNT(O.OrderID) AS TotalOrders FROM dbo.Orders AS O
JOIN dbo.Payments AS P ON O.PaymentID = P.PaymentID
GROUP BY P.PaymentMethod
ORDER BY TotalOrders DESC;