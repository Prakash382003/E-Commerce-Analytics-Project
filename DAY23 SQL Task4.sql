CREATE VIEW CustomerRevenueView AS
SELECT
C.CustomerName,
SUM(O.TotalAmount) AS TotalRevenue FROM dbo.Orders AS O
JOIN dbo.customers AS C ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName;S