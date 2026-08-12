SELECT P.PaymentMethod,
COUNT(O.PaymentID) AS TotalTransactions FROM dbo.Orders AS O
JOIN dbo.Payments AS P ON O.OrderID = P.OrderID
GROUP BY P.PaymentMethod
ORDER BY TotalTransactions DESC;