SELECT 
C.CustomerID, C.CustomerName, C.State FROM dbo.Customers AS C
LEFT JOIN dbo.Orders AS O ON C.CustomerID = O.CustomerID
WHERE O.OrderID IS  NULL;