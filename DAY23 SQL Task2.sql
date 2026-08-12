SELECT
CustomerName,
TotalRevenue,
RANK() OVER (ORDER BY TotalRevenue DESC) AS CustomerRank
FROM
(
SELECT 
C.CustomerName,
SUM(O.TotalAmount) AS TotalRevenue FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
) AS RevenueTable;