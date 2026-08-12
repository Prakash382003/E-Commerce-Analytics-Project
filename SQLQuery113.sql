SELECT City, COUNT(CustomerID) AS TotalCustomers
FROM dbo.Customers
GROUP BY City
ORDER BY TotalCustomers DESC;