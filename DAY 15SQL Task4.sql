SELECT TOP 10
R.ReturnReason,
COUNT(R.ReturnID) AS TotalReturns FROM dbo.Orders AS O
INNER JOIN dbo.Returns AS R ON O.OrderID = R.OrderID
GROUP BY R.ReturnReason
ORDER BY TotalReturns DESC;