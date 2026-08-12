SELECT
ProductName,
TotalRevenue,
ROW_NUMBER () OVER (ORDER BY TotalRevenue DESC) AS RowNum
FROM
(
SElECT
P.ProductName,
SUM(O.TotalAmount) AS TotalRevenue FROM dbo.Orders AS O
JOIN dbo.Products AS P ON O.ProductID = P.ProductID
GROUP BY P.ProductName
) AS ProductRevenue;