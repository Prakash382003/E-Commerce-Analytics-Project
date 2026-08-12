SELECT Gender, COUNT(CustomerID) AS TotalCustomers
FROM dbo.Customers
GROUP BY Gender
ORDER BY TotalCustomers DESC;