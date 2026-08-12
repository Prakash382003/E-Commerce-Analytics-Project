SELECT
O.CustomerID,
SUM(O.TotalAmount) AS TotalRevenue,
CASE
WHEN SUM(O.TotalAmount) >= 20000000 THEN 'High Value'
WHEN SUM(O.TotalAmount) >= 15000000 THEN 'MediumValue'
ELSE 'LOW VALUE'
END AS CustomerCategory
FROM dbo.Orders AS O
GROUP BY O.CustomerID
ORDER BY TotalRevenue DESC;