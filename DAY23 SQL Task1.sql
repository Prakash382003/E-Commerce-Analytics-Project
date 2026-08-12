SELECT 
C.CustomerName,
SUM(O.TotalAmount) AS TotalSpent FROM dbo.Orders AS O
JOIN dbo.customers AS C ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
HAVING SUM(O.TotalAmount) > (
SELECT AVG(CustomerSpent) FROM
(
SELECT 
SUM(TotalAmount) AS CustomerSpent FROM dbo.Orders
GROUP BY CustomerID
) AS AvgSpent
)
ORDER BY TotalSpent DESC;