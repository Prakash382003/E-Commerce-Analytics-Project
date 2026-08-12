CREATE PROCEDURE TOP10Customers
AS
BEGIN
SELECT TOP 10
C.CustomerName,
SUM(O.TotalAmount) AS TotalRevenue
FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
ORDER BY TotalRevenue DESC
END;