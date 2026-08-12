SELECT C.State,
AVG(TotalAmount) AS AverageOrderValue FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID
GROUP BY C.State
ORDER BY AverageOrderValue DESC;