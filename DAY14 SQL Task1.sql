SELECT
C.State,
SUM(O.TotalAmount) As TotalRevenue FROM dbo.Customers AS C
JOIN dbo.Orders AS O ON C.CustomerID = O.CustomerID
GROUP BY  C.States
ORDER BY TotalRevenue DESC;