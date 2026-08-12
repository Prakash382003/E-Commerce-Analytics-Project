WITH CustomerRevenue AS
(
SELECT
C.CustomerName,
SUm(O.TotalAmount) AS TotalRevenue FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
)
SELECT*
FROM CustomerRevenue
ORDER BY TotalRevenue DESC;