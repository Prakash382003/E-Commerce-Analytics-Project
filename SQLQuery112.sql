SELECT State,
       COUNT(CustomerID) AS TotalCustomers
FROM dbo.Customers
GROUP BY State
ORDER BY TotalCustomers DESC;