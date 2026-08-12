SELECT C.City, COUNT(O.OrderID) AS TotalOrders FROM dbo.Orders AS O
JOIN dbo.Customers AS C ON O.CustomerID = C.CustomerID 
GROUP BY C.CITY
ORDER BY TotalOrders DESC;